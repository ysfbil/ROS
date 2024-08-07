#include "ilk_paket/eylem_ornegiAction.h"
#include "ros/ros.h"
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <iostream>
char op;
float num1, num2;
using namespace std;
int main(int argc, char **argv) {
  ros::init(argc, argv, "ros_eylem_istemci");
  if (argc != 2) {
    ROS_INFO("%d", argc);
    ROS_WARN("En az bir sayi girmeniz gerekiyor!!!");
    return 1;
  }
  // eylem istemcisini oluşturuluyor ve istemcinin kendi iş parçacığını döndürür
  actionlib::SimpleActionClient<ilk_paket::eylem_ornegiAction> ac(
      "ros_eylem_sunucu", true);
  ROS_INFO("Eylem sunucusunun baslatilmasi bekleniyor");
  // Eylem sunucusunun başlatılması bekleniyor
  ac.waitForServer(); // Sürekli bekliyor
  ROS_INFO("Eylem sunucusu baslatildi");
  ROS_INFO("a islem b olacak sekilde islemi giriniz");
  // ROS_INFO("hesap icin 1. sayiyi giriniz");
  cin >> num1;
  // ROS_INFO("hesap icin islem turu giriniz");
  cin >> op;
  // ROS_INFO("hesap icin 2. sayiyi giriniz");
  cin >> num2;
  ROS_INFO("Action sunucusu baslatildi, Hesap icin gonderiliyor.");
  // send a goal to the action
  ilk_paket::eylem_ornegiGoal goal;
  goal.islem = op;
  goal.a = num1;
  goal.b = num2;
  goal.sinir = atoi(argv[1]);
  ROS_INFO("islem( %.2f %c %.2f ) sinir(%d)", goal.a, goal.islem, goal.b,
           atoi(argv[1]));
  ac.sendGoal(goal);
  bool sinir_asimi = ac.waitForResult(ros::Duration(atoi(argv[1])));
  ilk_paket::eylem_ornegiResultConstPtr result = ac.getResult();
  ac.cancelGoal();
  if (result->sonuc <= atoi(argv[1])) {
    actionlib::SimpleClientGoalState state = ac.getState();
    ROS_INFO("Eylem Sonlandi!!!: %s ", state.toString().c_str());
    //Öncelik Alma Gerçekleşiyor
    ac.cancelGoal();
  } else
    ROS_INFO("Hesaplanan deger sinirdan buyuk!!!");
  //çıkış
  return 0;
}