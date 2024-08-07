// Generated by gencpp from file ilk_paket/eylem_ornegiResult.msg
// DO NOT EDIT!


#ifndef ILK_PAKET_MESSAGE_EYLEM_ORNEGIRESULT_H
#define ILK_PAKET_MESSAGE_EYLEM_ORNEGIRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ilk_paket
{
template <class ContainerAllocator>
struct eylem_ornegiResult_
{
  typedef eylem_ornegiResult_<ContainerAllocator> Type;

  eylem_ornegiResult_()
    : sonuc(0.0)  {
    }
  eylem_ornegiResult_(const ContainerAllocator& _alloc)
    : sonuc(0.0)  {
  (void)_alloc;
    }



   typedef float _sonuc_type;
  _sonuc_type sonuc;





  typedef boost::shared_ptr< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> const> ConstPtr;

}; // struct eylem_ornegiResult_

typedef ::ilk_paket::eylem_ornegiResult_<std::allocator<void> > eylem_ornegiResult;

typedef boost::shared_ptr< ::ilk_paket::eylem_ornegiResult > eylem_ornegiResultPtr;
typedef boost::shared_ptr< ::ilk_paket::eylem_ornegiResult const> eylem_ornegiResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ilk_paket::eylem_ornegiResult_<ContainerAllocator1> & lhs, const ::ilk_paket::eylem_ornegiResult_<ContainerAllocator2> & rhs)
{
  return lhs.sonuc == rhs.sonuc;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ilk_paket::eylem_ornegiResult_<ContainerAllocator1> & lhs, const ::ilk_paket::eylem_ornegiResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ilk_paket

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fb68b3109d1a03c44153510bb38b9ace";
  }

  static const char* value(const ::ilk_paket::eylem_ornegiResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfb68b3109d1a03c4ULL;
  static const uint64_t static_value2 = 0x4153510bb38b9aceULL;
};

template<class ContainerAllocator>
struct DataType< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ilk_paket/eylem_ornegiResult";
  }

  static const char* value(const ::ilk_paket::eylem_ornegiResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#sonuc\n"
"float32 sonuc\n"
;
  }

  static const char* value(const ::ilk_paket::eylem_ornegiResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sonuc);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct eylem_ornegiResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ilk_paket::eylem_ornegiResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ilk_paket::eylem_ornegiResult_<ContainerAllocator>& v)
  {
    s << indent << "sonuc: ";
    Printer<float>::stream(s, indent + "  ", v.sonuc);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ILK_PAKET_MESSAGE_EYLEM_ORNEGIRESULT_H
