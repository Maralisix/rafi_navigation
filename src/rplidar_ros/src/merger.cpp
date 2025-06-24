#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <geometry_msgs/TransformStamped.h>
#include <vector>
#include <algorithm>
#include <cmath>

class LidarMerger {
private:
    ros::NodeHandle nh;
    ros::Subscriber scan1_sub;
    ros::Subscriber scan2_sub;
    ros::Publisher merged_scan_pub;
    sensor_msgs::LaserScan::ConstPtr scan1;
    sensor_msgs::LaserScan::ConstPtr scan2;
    tf2_ros::Buffer tfBuffer;
    tf2_ros::TransformListener tfListener;

public:
    LidarMerger() : tfListener(tfBuffer) {
        scan1_sub = nh.subscribe("/scan1", 10, &LidarMerger::scan1Callback, this);
        scan2_sub = nh.subscribe("/scan2", 10, &LidarMerger::scan2Callback, this);
        merged_scan_pub = nh.advertise<sensor_msgs::LaserScan>("/scan", 10);
        ROS_INFO("Lidar Merger Node Initialized.");
    }

    void scan1Callback(const sensor_msgs::LaserScan::ConstPtr& msg) {
        scan1 = msg;
        mergeAndPublish();
    }

    void scan2Callback(const sensor_msgs::LaserScan::ConstPtr& msg) {
        scan2 = msg;
        mergeAndPublish();
    }

    void mergeAndPublish() {
        if (!scan1 || !scan2) return;

        sensor_msgs::LaserScan merged_scan = *scan1; // Tomamos /scan1 como base
        merged_scan.header.stamp = ros::Time::now();
        merged_scan.header.frame_id = "laser"; // **Fixed Frame en "laser"**

        int num_ranges = scan1->ranges.size();
        std::vector<float> merged_ranges(num_ranges, std::numeric_limits<float>::infinity());

        // Fusionar /scan1
        for (size_t i = 0; i < num_ranges; i++) {
            merged_ranges[i] = scan1->ranges[i];
        }

        // Fusionar /scan2 con transformación considerando la nueva separación en Y
        for (size_t i = 0; i < num_ranges; i++) {
            double angle = scan2->angle_min + i * scan2->angle_increment;
            double x = scan2->ranges[i] * cos(angle);
            double y = scan2->ranges[i] * sin(angle) + 0.13; // **Traslación de +0.13 m en Y**

            double transformed_angle = atan2(y, x);
            int index = (transformed_angle - merged_scan.angle_min) / merged_scan.angle_increment;
            
            if (index >= 0 && index < num_ranges) {
                merged_ranges[index] = std::min(merged_ranges[index], scan2->ranges[i]);
            }
        }

        merged_scan.ranges = merged_ranges;
        merged_scan_pub.publish(merged_scan);
    }
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "lidar_merger");
    LidarMerger merger;
    ros::spin();
    return 0;
}

