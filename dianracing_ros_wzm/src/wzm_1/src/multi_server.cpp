#include "ros/ros.h"
#include "wzm_1/multi.h"

bool multi(wzm_1::multi::Request  &req,
         wzm_1::multi::Response &res)
{
  res.m = req.a * req.b;
  ROS_INFO("request: x=%ld, y=%ld", (long int)req.a, (long int)req.b);
  ROS_INFO("sending back response: [%ld]", (long int)res.m);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "wzm_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("multi_two_ints", multi);
  ROS_INFO("Ready to multi two ints.");
  ros::spin();

  return 0;
}
