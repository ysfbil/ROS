;; Auto-generated. Do not edit!


(when (boundp 'ilk_paket::servis_ornegi)
  (if (not (find-package "ILK_PAKET"))
    (make-package "ILK_PAKET"))
  (shadow 'servis_ornegi (find-package "ILK_PAKET")))
(unless (find-package "ILK_PAKET::SERVIS_ORNEGI")
  (make-package "ILK_PAKET::SERVIS_ORNEGI"))
(unless (find-package "ILK_PAKET::SERVIS_ORNEGIREQUEST")
  (make-package "ILK_PAKET::SERVIS_ORNEGIREQUEST"))
(unless (find-package "ILK_PAKET::SERVIS_ORNEGIRESPONSE")
  (make-package "ILK_PAKET::SERVIS_ORNEGIRESPONSE"))

(in-package "ROS")





(defclass ilk_paket::servis_ornegiRequest
  :super ros::object
  :slots (_islem _a _b ))

(defmethod ilk_paket::servis_ornegiRequest
  (:init
   (&key
    ((:islem __islem) 0)
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    )
   (send-super :init)
   (setq _islem (round __islem))
   (setq _a (float __a))
   (setq _b (float __b))
   self)
  (:islem
   (&optional __islem)
   (if __islem (setq _islem __islem)) _islem)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; char _islem
    1
    ;; float64 _a
    8
    ;; float64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char _islem
       (write-byte _islem s)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char _islem
     (setq _islem (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ilk_paket::servis_ornegiResponse
  :super ros::object
  :slots (_sonuc ))

(defmethod ilk_paket::servis_ornegiResponse
  (:init
   (&key
    ((:sonuc __sonuc) 0.0)
    )
   (send-super :init)
   (setq _sonuc (float __sonuc))
   self)
  (:sonuc
   (&optional __sonuc)
   (if __sonuc (setq _sonuc __sonuc)) _sonuc)
  (:serialization-length
   ()
   (+
    ;; float64 _sonuc
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _sonuc
       (sys::poke _sonuc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _sonuc
     (setq _sonuc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ilk_paket::servis_ornegi
  :super ros::object
  :slots ())

(setf (get ilk_paket::servis_ornegi :md5sum-) "23062d1c9d00067c401ffbc6d629d9b9")
(setf (get ilk_paket::servis_ornegi :datatype-) "ilk_paket/servis_ornegi")
(setf (get ilk_paket::servis_ornegi :request) ilk_paket::servis_ornegiRequest)
(setf (get ilk_paket::servis_ornegi :response) ilk_paket::servis_ornegiResponse)

(defmethod ilk_paket::servis_ornegiRequest
  (:response () (instance ilk_paket::servis_ornegiResponse :init)))

(setf (get ilk_paket::servis_ornegiRequest :md5sum-) "23062d1c9d00067c401ffbc6d629d9b9")
(setf (get ilk_paket::servis_ornegiRequest :datatype-) "ilk_paket/servis_ornegiRequest")
(setf (get ilk_paket::servis_ornegiRequest :definition-)
      "char islem
float64 a
float64 b
---
float64 sonuc
")

(setf (get ilk_paket::servis_ornegiResponse :md5sum-) "23062d1c9d00067c401ffbc6d629d9b9")
(setf (get ilk_paket::servis_ornegiResponse :datatype-) "ilk_paket/servis_ornegiResponse")
(setf (get ilk_paket::servis_ornegiResponse :definition-)
      "char islem
float64 a
float64 b
---
float64 sonuc
")



(provide :ilk_paket/servis_ornegi "23062d1c9d00067c401ffbc6d629d9b9")


