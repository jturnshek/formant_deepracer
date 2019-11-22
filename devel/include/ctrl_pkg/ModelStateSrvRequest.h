// Generated by gencpp from file ctrl_pkg/ModelStateSrvRequest.msg
// DO NOT EDIT!


#ifndef CTRL_PKG_MESSAGE_MODELSTATESRVREQUEST_H
#define CTRL_PKG_MESSAGE_MODELSTATESRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ctrl_pkg
{
template <class ContainerAllocator>
struct ModelStateSrvRequest_
{
  typedef ModelStateSrvRequest_<ContainerAllocator> Type;

  ModelStateSrvRequest_()
    : model_name()
    , img_format()
    , width(0)
    , height(0)
    , num_channels(0)
    , platform(0)
    , taskType(0)
    , preProcessType(0)  {
    }
  ModelStateSrvRequest_(const ContainerAllocator& _alloc)
    : model_name(_alloc)
    , img_format(_alloc)
    , width(0)
    , height(0)
    , num_channels(0)
    , platform(0)
    , taskType(0)
    , preProcessType(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _model_name_type;
  _model_name_type model_name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _img_format_type;
  _img_format_type img_format;

   typedef int32_t _width_type;
  _width_type width;

   typedef int32_t _height_type;
  _height_type height;

   typedef int32_t _num_channels_type;
  _num_channels_type num_channels;

   typedef int32_t _platform_type;
  _platform_type platform;

   typedef int8_t _taskType_type;
  _taskType_type taskType;

   typedef int8_t _preProcessType_type;
  _preProcessType_type preProcessType;





  typedef boost::shared_ptr< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ModelStateSrvRequest_

typedef ::ctrl_pkg::ModelStateSrvRequest_<std::allocator<void> > ModelStateSrvRequest;

typedef boost::shared_ptr< ::ctrl_pkg::ModelStateSrvRequest > ModelStateSrvRequestPtr;
typedef boost::shared_ptr< ::ctrl_pkg::ModelStateSrvRequest const> ModelStateSrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ctrl_pkg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'ctrl_pkg': ['/home/deepracer/catkin_ws/src/ctrl_pkg/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "25d699da99348f0bb8249e6c969eab1f";
  }

  static const char* value(const ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x25d699da99348f0bULL;
  static const uint64_t static_value2 = 0xb8249e6c969eab1fULL;
};

template<class ContainerAllocator>
struct DataType< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ctrl_pkg/ModelStateSrvRequest";
  }

  static const char* value(const ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string model_name\n\
string img_format\n\
int32 width\n\
int32 height\n\
int32 num_channels\n\
int32 platform\n\
int8 taskType\n\
int8 preProcessType\n\
";
  }

  static const char* value(const ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.model_name);
      stream.next(m.img_format);
      stream.next(m.width);
      stream.next(m.height);
      stream.next(m.num_channels);
      stream.next(m.platform);
      stream.next(m.taskType);
      stream.next(m.preProcessType);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ModelStateSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ctrl_pkg::ModelStateSrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "model_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.model_name);
    s << indent << "img_format: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.img_format);
    s << indent << "width: ";
    Printer<int32_t>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<int32_t>::stream(s, indent + "  ", v.height);
    s << indent << "num_channels: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_channels);
    s << indent << "platform: ";
    Printer<int32_t>::stream(s, indent + "  ", v.platform);
    s << indent << "taskType: ";
    Printer<int8_t>::stream(s, indent + "  ", v.taskType);
    s << indent << "preProcessType: ";
    Printer<int8_t>::stream(s, indent + "  ", v.preProcessType);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CTRL_PKG_MESSAGE_MODELSTATESRVREQUEST_H