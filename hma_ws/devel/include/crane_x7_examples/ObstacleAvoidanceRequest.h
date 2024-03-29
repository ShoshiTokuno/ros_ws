// Generated by gencpp from file crane_x7_examples/ObstacleAvoidanceRequest.msg
// DO NOT EDIT!


#ifndef CRANE_X7_EXAMPLES_MESSAGE_OBSTACLEAVOIDANCEREQUEST_H
#define CRANE_X7_EXAMPLES_MESSAGE_OBSTACLEAVOIDANCEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/PoseStamped.h>

namespace crane_x7_examples
{
template <class ContainerAllocator>
struct ObstacleAvoidanceRequest_
{
  typedef ObstacleAvoidanceRequest_<ContainerAllocator> Type;

  ObstacleAvoidanceRequest_()
    : start_pose()
    , goal_pose()
    , obstacle_enable(false)
    , obstacle_size()
    , obstacle_pose_stamped()
    , obstacle_name()  {
    }
  ObstacleAvoidanceRequest_(const ContainerAllocator& _alloc)
    : start_pose(_alloc)
    , goal_pose(_alloc)
    , obstacle_enable(false)
    , obstacle_size(_alloc)
    , obstacle_pose_stamped(_alloc)
    , obstacle_name(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _start_pose_type;
  _start_pose_type start_pose;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _goal_pose_type;
  _goal_pose_type goal_pose;

   typedef uint8_t _obstacle_enable_type;
  _obstacle_enable_type obstacle_enable;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _obstacle_size_type;
  _obstacle_size_type obstacle_size;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _obstacle_pose_stamped_type;
  _obstacle_pose_stamped_type obstacle_pose_stamped;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _obstacle_name_type;
  _obstacle_name_type obstacle_name;





  typedef boost::shared_ptr< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ObstacleAvoidanceRequest_

typedef ::crane_x7_examples::ObstacleAvoidanceRequest_<std::allocator<void> > ObstacleAvoidanceRequest;

typedef boost::shared_ptr< ::crane_x7_examples::ObstacleAvoidanceRequest > ObstacleAvoidanceRequestPtr;
typedef boost::shared_ptr< ::crane_x7_examples::ObstacleAvoidanceRequest const> ObstacleAvoidanceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace crane_x7_examples

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1f107495b21e60af9baa011dd99ed578";
  }

  static const char* value(const ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1f107495b21e60afULL;
  static const uint64_t static_value2 = 0x9baa011dd99ed578ULL;
};

template<class ContainerAllocator>
struct DataType< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "crane_x7_examples/ObstacleAvoidanceRequest";
  }

  static const char* value(const ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
geometry_msgs/Pose          start_pose\n\
geometry_msgs/Pose          goal_pose\n\
\n\
\n\
bool                        obstacle_enable\n\
geometry_msgs/Vector3       obstacle_size\n\
geometry_msgs/PoseStamped   obstacle_pose_stamped\n\
string                      obstacle_name\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start_pose);
      stream.next(m.goal_pose);
      stream.next(m.obstacle_enable);
      stream.next(m.obstacle_size);
      stream.next(m.obstacle_pose_stamped);
      stream.next(m.obstacle_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObstacleAvoidanceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::crane_x7_examples::ObstacleAvoidanceRequest_<ContainerAllocator>& v)
  {
    s << indent << "start_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.start_pose);
    s << indent << "goal_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_pose);
    s << indent << "obstacle_enable: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.obstacle_enable);
    s << indent << "obstacle_size: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.obstacle_size);
    s << indent << "obstacle_pose_stamped: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.obstacle_pose_stamped);
    s << indent << "obstacle_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.obstacle_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CRANE_X7_EXAMPLES_MESSAGE_OBSTACLEAVOIDANCEREQUEST_H
