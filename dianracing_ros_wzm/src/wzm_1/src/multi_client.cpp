#include "ros/ros.h"
#include "wzm_1/multi.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "wzm_client");
  if (argc != 3)
  {
    ROS_INFO("usage: multi_two_ints_client X Y");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<wzm_1::multi>("multi_two_ints");
  wzm_1::multi srv;
  srv.request.a = atoll(argv[1]);
  srv.request.b = atoll(argv[2]);
  if (client.call(srv))
  {
    ROS_INFO("multi: %ld", (long int)srv.response.m);
  }
  else
  {
    ROS_ERROR("Failed to call service multi_two_ints");
    return 1;
  }

  return 0;
}
