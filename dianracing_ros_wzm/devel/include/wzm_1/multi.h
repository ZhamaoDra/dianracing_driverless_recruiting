// Generated by gencpp from file wzm_1/multi.msg
// DO NOT EDIT!


#ifndef WZM_1_MESSAGE_MULTI_H
#define WZM_1_MESSAGE_MULTI_H

#include <ros/service_traits.h>


#include <wzm_1/multiRequest.h>
#include <wzm_1/multiResponse.h>


namespace wzm_1
{

struct multi
{

typedef multiRequest Request;
typedef multiResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct multi
} // namespace wzm_1


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::wzm_1::multi > {
  static const char* value()
  {
    return "94ad1411057ad93d39d73409d0884011";
  }

  static const char* value(const ::wzm_1::multi&) { return value(); }
};

template<>
struct DataType< ::wzm_1::multi > {
  static const char* value()
  {
    return "wzm_1/multi";
  }

  static const char* value(const ::wzm_1::multi&) { return value(); }
};


// service_traits::MD5Sum< ::wzm_1::multiRequest> should match 
// service_traits::MD5Sum< ::wzm_1::multi > 
template<>
struct MD5Sum< ::wzm_1::multiRequest>
{
  static const char* value()
  {
    return MD5Sum< ::wzm_1::multi >::value();
  }
  static const char* value(const ::wzm_1::multiRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::wzm_1::multiRequest> should match 
// service_traits::DataType< ::wzm_1::multi > 
template<>
struct DataType< ::wzm_1::multiRequest>
{
  static const char* value()
  {
    return DataType< ::wzm_1::multi >::value();
  }
  static const char* value(const ::wzm_1::multiRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::wzm_1::multiResponse> should match 
// service_traits::MD5Sum< ::wzm_1::multi > 
template<>
struct MD5Sum< ::wzm_1::multiResponse>
{
  static const char* value()
  {
    return MD5Sum< ::wzm_1::multi >::value();
  }
  static const char* value(const ::wzm_1::multiResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::wzm_1::multiResponse> should match 
// service_traits::DataType< ::wzm_1::multi > 
template<>
struct DataType< ::wzm_1::multiResponse>
{
  static const char* value()
  {
    return DataType< ::wzm_1::multi >::value();
  }
  static const char* value(const ::wzm_1::multiResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WZM_1_MESSAGE_MULTI_H
