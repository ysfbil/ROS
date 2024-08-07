; Auto-generated. Do not edit!


(cl:in-package ilk_paket-srv)


;//! \htmlinclude servis_ornegi-request.msg.html

(cl:defclass <servis_ornegi-request> (roslisp-msg-protocol:ros-message)
  ((islem
    :reader islem
    :initarg :islem
    :type cl:integer
    :initform 0)
   (a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0))
)

(cl:defclass servis_ornegi-request (<servis_ornegi-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <servis_ornegi-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'servis_ornegi-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilk_paket-srv:<servis_ornegi-request> is deprecated: use ilk_paket-srv:servis_ornegi-request instead.")))

(cl:ensure-generic-function 'islem-val :lambda-list '(m))
(cl:defmethod islem-val ((m <servis_ornegi-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-srv:islem-val is deprecated.  Use ilk_paket-srv:islem instead.")
  (islem m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <servis_ornegi-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-srv:a-val is deprecated.  Use ilk_paket-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <servis_ornegi-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-srv:b-val is deprecated.  Use ilk_paket-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <servis_ornegi-request>) ostream)
  "Serializes a message object of type '<servis_ornegi-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'islem)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <servis_ornegi-request>) istream)
  "Deserializes a message object of type '<servis_ornegi-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'islem)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<servis_ornegi-request>)))
  "Returns string type for a service object of type '<servis_ornegi-request>"
  "ilk_paket/servis_ornegiRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servis_ornegi-request)))
  "Returns string type for a service object of type 'servis_ornegi-request"
  "ilk_paket/servis_ornegiRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<servis_ornegi-request>)))
  "Returns md5sum for a message object of type '<servis_ornegi-request>"
  "23062d1c9d00067c401ffbc6d629d9b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'servis_ornegi-request)))
  "Returns md5sum for a message object of type 'servis_ornegi-request"
  "23062d1c9d00067c401ffbc6d629d9b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<servis_ornegi-request>)))
  "Returns full string definition for message of type '<servis_ornegi-request>"
  (cl:format cl:nil "char islem~%float64 a~%float64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'servis_ornegi-request)))
  "Returns full string definition for message of type 'servis_ornegi-request"
  (cl:format cl:nil "char islem~%float64 a~%float64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <servis_ornegi-request>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <servis_ornegi-request>))
  "Converts a ROS message object to a list"
  (cl:list 'servis_ornegi-request
    (cl:cons ':islem (islem msg))
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude servis_ornegi-response.msg.html

(cl:defclass <servis_ornegi-response> (roslisp-msg-protocol:ros-message)
  ((sonuc
    :reader sonuc
    :initarg :sonuc
    :type cl:float
    :initform 0.0))
)

(cl:defclass servis_ornegi-response (<servis_ornegi-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <servis_ornegi-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'servis_ornegi-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilk_paket-srv:<servis_ornegi-response> is deprecated: use ilk_paket-srv:servis_ornegi-response instead.")))

(cl:ensure-generic-function 'sonuc-val :lambda-list '(m))
(cl:defmethod sonuc-val ((m <servis_ornegi-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-srv:sonuc-val is deprecated.  Use ilk_paket-srv:sonuc instead.")
  (sonuc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <servis_ornegi-response>) ostream)
  "Serializes a message object of type '<servis_ornegi-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sonuc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <servis_ornegi-response>) istream)
  "Deserializes a message object of type '<servis_ornegi-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sonuc) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<servis_ornegi-response>)))
  "Returns string type for a service object of type '<servis_ornegi-response>"
  "ilk_paket/servis_ornegiResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servis_ornegi-response)))
  "Returns string type for a service object of type 'servis_ornegi-response"
  "ilk_paket/servis_ornegiResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<servis_ornegi-response>)))
  "Returns md5sum for a message object of type '<servis_ornegi-response>"
  "23062d1c9d00067c401ffbc6d629d9b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'servis_ornegi-response)))
  "Returns md5sum for a message object of type 'servis_ornegi-response"
  "23062d1c9d00067c401ffbc6d629d9b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<servis_ornegi-response>)))
  "Returns full string definition for message of type '<servis_ornegi-response>"
  (cl:format cl:nil "float64 sonuc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'servis_ornegi-response)))
  "Returns full string definition for message of type 'servis_ornegi-response"
  (cl:format cl:nil "float64 sonuc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <servis_ornegi-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <servis_ornegi-response>))
  "Converts a ROS message object to a list"
  (cl:list 'servis_ornegi-response
    (cl:cons ':sonuc (sonuc msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'servis_ornegi)))
  'servis_ornegi-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'servis_ornegi)))
  'servis_ornegi-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servis_ornegi)))
  "Returns string type for a service object of type '<servis_ornegi>"
  "ilk_paket/servis_ornegi")