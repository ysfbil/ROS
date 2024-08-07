; Auto-generated. Do not edit!


(cl:in-package ilk_paket-msg)


;//! \htmlinclude ozellestirilmis_mesaj.msg.html

(cl:defclass <ozellestirilmis_mesaj> (roslisp-msg-protocol:ros-message)
  ((sensorGirisAdi
    :reader sensorGirisAdi
    :initarg :sensorGirisAdi
    :type cl:string
    :initform "")
   (sensorDegeri
    :reader sensorDegeri
    :initarg :sensorDegeri
    :type cl:integer
    :initform 0)
   (durumu
    :reader durumu
    :initarg :durumu
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ozellestirilmis_mesaj (<ozellestirilmis_mesaj>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ozellestirilmis_mesaj>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ozellestirilmis_mesaj)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilk_paket-msg:<ozellestirilmis_mesaj> is deprecated: use ilk_paket-msg:ozellestirilmis_mesaj instead.")))

(cl:ensure-generic-function 'sensorGirisAdi-val :lambda-list '(m))
(cl:defmethod sensorGirisAdi-val ((m <ozellestirilmis_mesaj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:sensorGirisAdi-val is deprecated.  Use ilk_paket-msg:sensorGirisAdi instead.")
  (sensorGirisAdi m))

(cl:ensure-generic-function 'sensorDegeri-val :lambda-list '(m))
(cl:defmethod sensorDegeri-val ((m <ozellestirilmis_mesaj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:sensorDegeri-val is deprecated.  Use ilk_paket-msg:sensorDegeri instead.")
  (sensorDegeri m))

(cl:ensure-generic-function 'durumu-val :lambda-list '(m))
(cl:defmethod durumu-val ((m <ozellestirilmis_mesaj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:durumu-val is deprecated.  Use ilk_paket-msg:durumu instead.")
  (durumu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ozellestirilmis_mesaj>) ostream)
  "Serializes a message object of type '<ozellestirilmis_mesaj>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensorGirisAdi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensorGirisAdi))
  (cl:let* ((signed (cl:slot-value msg 'sensorDegeri)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'durumu) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ozellestirilmis_mesaj>) istream)
  "Deserializes a message object of type '<ozellestirilmis_mesaj>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensorGirisAdi) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensorGirisAdi) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensorDegeri) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'durumu) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ozellestirilmis_mesaj>)))
  "Returns string type for a message object of type '<ozellestirilmis_mesaj>"
  "ilk_paket/ozellestirilmis_mesaj")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ozellestirilmis_mesaj)))
  "Returns string type for a message object of type 'ozellestirilmis_mesaj"
  "ilk_paket/ozellestirilmis_mesaj")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ozellestirilmis_mesaj>)))
  "Returns md5sum for a message object of type '<ozellestirilmis_mesaj>"
  "840aae7739efcc5ed7df9d06667d6e29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ozellestirilmis_mesaj)))
  "Returns md5sum for a message object of type 'ozellestirilmis_mesaj"
  "840aae7739efcc5ed7df9d06667d6e29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ozellestirilmis_mesaj>)))
  "Returns full string definition for message of type '<ozellestirilmis_mesaj>"
  (cl:format cl:nil "string sensorGirisAdi~%int32 sensorDegeri~%bool durumu~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ozellestirilmis_mesaj)))
  "Returns full string definition for message of type 'ozellestirilmis_mesaj"
  (cl:format cl:nil "string sensorGirisAdi~%int32 sensorDegeri~%bool durumu~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ozellestirilmis_mesaj>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sensorGirisAdi))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ozellestirilmis_mesaj>))
  "Converts a ROS message object to a list"
  (cl:list 'ozellestirilmis_mesaj
    (cl:cons ':sensorGirisAdi (sensorGirisAdi msg))
    (cl:cons ':sensorDegeri (sensorDegeri msg))
    (cl:cons ':durumu (durumu msg))
))
