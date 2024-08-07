#include "ilk_paket/servis_ornegi.h"
#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include <iostream>
#include <sstream>
bool ros_servis_bidirimi(ilk_paket::servis_ornegi::Request &req,
                         ilk_paket::servis_ornegi::Response &res) {
  switch (req.islem) {
  case '+':
    res.sonuc = req.a + req.b;
    ROS_INFO("%.2f %c %.2f = %.2f", req.a, req.islem, req.b, res.sonuc);
    break;
  case '-':
    res.sonuc = req.a - req.b;
    ROS_INFO("%.2f %c %.2f = %.2f", req.a, req.islem, req.b, res.sonuc);
    break;
  case '*':
    res.sonuc = req.a * req.b;
    ROS_INFO("%.2f %c %.2f = %.2f", req.a, req.islem, req.b, res.sonuc);
    break;
  case '/':
    res.sonuc = req.a / req.b;
    ROS_INFO("%.2f %c %.2f = %.2f", req.a, req.islem, req.b, res.sonuc);
    break;
  default:
    break;
  }
  return true;
}
int main(int argc, char **argv) {
  // bir_konu_yayinla bir adıyla ROS düğümü başlatılır.
  ros::init(argc, argv, "ros_servis_sunucu");
  // Bir düğüm tanıtıcı nesnesi oluşturulur
  ros::NodeHandle dugum_nesnesi;
  // Bir servis sunucu nesnesi oluşturulur
  ros::ServiceServer servis =
      dugum_nesnesi.advertiseService("ros_servis", ros_servis_bidirimi);
  ROS_INFO("ROS servis sunucusu istemciden talep almaya hazir.");
  ros::spin();
  return 0;
}