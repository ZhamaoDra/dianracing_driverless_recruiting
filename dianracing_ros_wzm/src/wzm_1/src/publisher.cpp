#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "wzm_publisher");
  ros::NodeHandle a;
  ros::Publisher pub = a.advertise<std_msgs::String>("dianracing", 1000);
  ros::Rate loop_rate(10);
  int n = 0;
  while (ros::ok())
  {
    std_msgs::String msg;
    std::stringstream ss;
    ss << "driverless gogogo!NO. " << n;
    msg.data = ss.str();
    ROS_INFO("%s", msg.data.c_str());
    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
    n+=9;
  }


  return 0;
}

