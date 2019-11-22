// Generated by gencpp from file i2c_pkg/BatteryLevelSrvResponse.msg
// DO NOT EDIT!


#ifndef I2C_PKG_MESSAGE_BATTERYLEVELSRVRESPONSE_H
#define I2C_PKG_MESSAGE_BATTERYLEVELSRVRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace i2c_pkg
{
template <class ContainerAllocator>
struct BatteryLevelSrvResponse_
{
  typedef BatteryLevelSrvResponse_<ContainerAllocator> Type;

  BatteryLevelSrvResponse_()
    : level(0)  {
    }
  BatteryLevelSrvResponse_(const ContainerAllocator& _alloc)
    : level(0)  {
  (void)_alloc;
    }



   typedef int32_t _level_type;
  _level_type level;





  typedef boost::shared_ptr< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct BatteryLevelSrvResponse_

typedef ::i2c_pkg::BatteryLevelSrvResponse_<std::allocator<void> > BatteryLevelSrvResponse;

typedef boost::shared_ptr< ::i2c_pkg::BatteryLevelSrvResponse > BatteryLevelSrvResponsePtr;
typedef boost::shared_ptr< ::i2c_pkg::BatteryLevelSrvResponse const> BatteryLevelSrvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace i2c_pkg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ded14a708dd5929a9ebf864ad17c94f5";
  }

  static const char* value(const ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xded14a708dd5929aULL;
  static const uint64_t static_value2 = 0x9ebf864ad17c94f5ULL;
};

template<class ContainerAllocator>
struct DataType< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "i2c_pkg/BatteryLevelSrvResponse";
  }

  static const char* value(const ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 level\n\
";
  }

  static const char* value(const ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.level);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BatteryLevelSrvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::i2c_pkg::BatteryLevelSrvResponse_<ContainerAllocator>& v)
  {
    s << indent << "level: ";
    Printer<int32_t>::stream(s, indent + "  ", v.level);
  }
};

} // namespace message_operations
} // namespace ros

#endif // I2C_PKG_MESSAGE_BATTERYLEVELSRVRESPONSE_H
