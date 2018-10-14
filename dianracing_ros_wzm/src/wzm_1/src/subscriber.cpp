#include "ros/ros.h"
#include "std_msgs/String.h"


void dianracing_cb(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("%s", msg->data.c_str());
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "wzm_subscriber");
  ros::NodeHandle a;
  ros::Subscriber sub = a.subscribe("dianracing", 1000, dianracing_cb);
  ros::spin();
  return 0;
}
