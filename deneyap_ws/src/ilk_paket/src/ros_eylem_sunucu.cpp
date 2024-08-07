#include "ilk_paket/eylem_ornegiAction.h"
#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include <actionlib/server/simple_action_server.h>
#include <iostream>
#include <sstream>
class eylem_ornegi_action {
protected:
  ros::NodeHandle nh_;
  // NodeHandle yapisi bu satirdan once oluşturulmalıdır. Aksi takdirde bir hata
  // oluşabilir.
  actionlib::SimpleActionServer<ilk_paket::eylem_ornegiAction> as;
  // yayınlanan geri bildirim/sonuç için kullanılan mesajlar oluşturur
  ilk_paket::eylem_ornegiFeedback feedback;
  ilk_paket::eylem_ornegiResult result;
  std::string action_name;
  int hesap;
  float hesap_sonuc;

public:
  eylem_ornegi_action(std::string name)
      : as(nh_, name, boost::bind(&eylem_ornegi_action::executeCB, this, _1),
           false),
        action_name(name) {
    as.registerPreemptCallback(
        boost::bind(&eylem_ornegi_action::preemptCB, this));
    as.start();
  }
  ~eylem_ornegi_action(void) {}
  void preemptCB() {
    ROS_WARN("%s oncelikli oldu!", action_name.c_str());
    as.setPreempted(result, "Ben onlendim");
  }
  void executeCB(const ilk_paket::eylem_ornegiGoalConstPtr &hesap) {
    if (!as.isActive() || as.isPreemptRequested())
      return;
    ros::Rate rate(5);
    ROS_INFO("%s calisiyor sinir= %d", action_name.c_str(), hesap->sinir);
    switch (hesap->islem) {
    // If user enter +
    case '+':
      hesap_sonuc = hesap->a + hesap->b;
      // printf("%.2f ,%.2f ,%.2d",hesap->a,hesap->b,hesap_sonuc);
      ROS_INFO("%.2f %c %.2f = %.2f", hesap->a, hesap->islem, hesap->b,
               hesap_sonuc);
      break;
    // If user enter -
    case '-':
      hesap_sonuc = hesap->a - hesap->b;
      // printf("%.2f ,%.2f ,%.2f",hesap->a,hesap->b,res.sonuc);
      ROS_INFO("%.2f %c %.2f = %.2f", hesap->a, hesap->islem, hesap->b,
               hesap_sonuc);
      break;
    // If user enter *
    case '*':
      hesap_sonuc = hesap->a * hesap->b;
      // printf("%.2f ,%.2f ,%.2f",hesap->a,hesap->b,res.sonuc);
      ROS_INFO("%.2f %c %.2f = %.2f", hesap->a, hesap->islem, hesap->b,
               hesap_sonuc);
      break;
    // If user enter /
    case '/':
      hesap_sonuc = hesap->a / hesap->b;
      ROS_INFO("%.2f %c %.2f = %.2f", hesap->a, hesap->islem, hesap->b,
               hesap_sonuc);
      break;
    // operator +, -, * veya / 'den farkli bir isaret girerse hata mesaji
    // gosterilir
    default:
      break;
    }
    if (!as.isActive() || as.isPreemptRequested()) {
      return;
    }
    if (hesap->sinir >= hesap_sonuc) {
      ROS_INFO("%s basarili hesaplanan sayi= %.2f", action_name.c_str(),
               hesap_sonuc);
      result.sonuc = hesap_sonuc;
      as.setSucceeded(result);
    } else {
      ROS_INFO("Hesaplanan sayi sinirdan daha buyuk (%.2f > %d)", hesap_sonuc,
               hesap->sinir);
      feedback.hedef_feedback = result.sonuc;
      as.publishFeedback(feedback);
      as.setAborted(result);
    }
    rate.sleep();
  }
};
int main(int argc, char **argv) {
  ros::init(argc, argv, "ros_eylem_sunucu");
  ROS_INFO("Eylem Sunucusu Baslatildi");
  eylem_ornegi_action action_ornegi_obj(ros::this_node::getName());
  ros::spin();
  return 0;
}