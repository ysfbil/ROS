#include "ros/ros.h"
int main(int argc, char **argv) {
  ros::init(argc, argv, "MERHABA_DUGUMU");
  ros::NodeHandle nh; // tanımlanmazsa zamanlama hatası döndürür.
  ros::Rate loop_rate(10);
  int sayi = 0;
  while (ros::ok()) // Kullanıcı Ctrl + C tuşlarına basana kadar döngüyü sürdür
  {
    ROS_INFO_STREAM("Merhaba Dunya : " << sayi);
    ros::spinOnce();   // ROS'un gelen mesajları işlemesine izin ver
    loop_rate.sleep(); // Döngünün geri kalanı için uykuda kalır
    sayi++;
  }
  return 0;
}