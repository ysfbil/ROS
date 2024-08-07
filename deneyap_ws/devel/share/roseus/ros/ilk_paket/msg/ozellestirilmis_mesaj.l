;; Auto-generated. Do not edit!


(when (boundp 'ilk_paket::ozellestirilmis_mesaj)
  (if (not (find-package "ILK_PAKET"))
    (make-package "ILK_PAKET"))
  (shadow 'ozellestirilmis_mesaj (find-package "ILK_PAKET")))
(unless (find-package "ILK_PAKET::OZELLESTIRILMIS_MESAJ")
  (make-package "ILK_PAKET::OZELLESTIRILMIS_MESAJ"))

(in-package "ROS")
;;//! \htmlinclude ozellestirilmis_mesaj.msg.html


(defclass ilk_paket::ozellestirilmis_mesaj
  :super ros::object
  :slots (_sensorGirisAdi _sensorDegeri _durumu ))

(defmethod ilk_paket::ozellestirilmis_mesaj
  (:init
   (&key
    ((:sensorGirisAdi __sensorGirisAdi) "")
    ((:sensorDegeri __sensorDegeri) 0)
    ((:durumu __durumu) nil)
    )
   (send-super :init)
   (setq _sensorGirisAdi (string __sensorGirisAdi))
   (setq _sensorDegeri (round __sensorDegeri))
   (setq _durumu __durumu)
   self)
  (:sensorGirisAdi
   (&optional __sensorGirisAdi)
   (if __sensorGirisAdi (setq _sensorGirisAdi __sensorGirisAdi)) _sensorGirisAdi)
  (:sensorDegeri
   (&optional __sensorDegeri)
   (if __sensorDegeri (setq _sensorDegeri __sensorDegeri)) _sensorDegeri)
  (:durumu
   (&optional (__durumu :null))
   (if (not (eq __durumu :null)) (setq _durumu __durumu)) _durumu)
  (:serialization-length
   ()
   (+
    ;; string _sensorGirisAdi
    4 (length _sensorGirisAdi)
    ;; int32 _sensorDegeri
    4
    ;; bool _durumu
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sensorGirisAdi
       (write-long (length _sensorGirisAdi) s) (princ _sensorGirisAdi s)
     ;; int32 _sensorDegeri
       (write-long _sensorDegeri s)
     ;; bool _durumu
       (if _durumu (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sensorGirisAdi
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensorGirisAdi (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _sensorDegeri
     (setq _sensorDegeri (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _durumu
     (setq _durumu (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ilk_paket::ozellestirilmis_mesaj :md5sum-) "840aae7739efcc5ed7df9d06667d6e29")
(setf (get ilk_paket::ozellestirilmis_mesaj :datatype-) "ilk_paket/ozellestirilmis_mesaj")
(setf (get ilk_paket::ozellestirilmis_mesaj :definition-)
      "string sensorGirisAdi
int32 sensorDegeri
bool durumu
")



(provide :ilk_paket/ozellestirilmis_mesaj "840aae7739efcc5ed7df9d06667d6e29")


