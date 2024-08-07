; Auto-generated. Do not edit!


(cl:in-package ilk_paket-msg)


;//! \htmlinclude eylem_ornegiGoal.msg.html

(cl:defclass <eylem_ornegiGoal> (roslisp-msg-protocol:ros-message)
  ((sinir
    :reader sinir
    :initarg :sinir
    :type cl:integer
    :initform 0)
   (islem
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

(cl:defclass eylem_ornegiGoal (<eylem_ornegiGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <eylem_ornegiGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'eylem_ornegiGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilk_paket-msg:<eylem_ornegiGoal> is deprecated: use ilk_paket-msg:eylem_ornegiGoal instead.")))

(cl:ensure-generic-function 'sinir-val :lambda-list '(m))
(cl:defmethod sinir-val ((m <eylem_ornegiGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:sinir-val is deprecated.  Use ilk_paket-msg:sinir instead.")
  (sinir m))

(cl:ensure-generic-function 'islem-val :lambda-list '(m))
(cl:defmethod islem-val ((m <eylem_ornegiGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:islem-val is deprecated.  Use ilk_paket-msg:islem instead.")
  (islem m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <eylem_ornegiGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:a-val is deprecated.  Use ilk_paket-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <eylem_ornegiGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:b-val is deprecated.  Use ilk_paket-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <eylem_ornegiGoal>) ostream)
  "Serializes a message object of type '<eylem_ornegiGoal>"
  (cl:let* ((signed (cl:slot-value msg 'sinir)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <eylem_ornegiGoal>) istream)
  "Deserializes a message object of type '<eylem_ornegiGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sinir) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<eylem_ornegiGoal>)))
  "Returns string type for a message object of type '<eylem_ornegiGoal>"
  "ilk_paket/eylem_ornegiGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'eylem_ornegiGoal)))
  "Returns string type for a message object of type 'eylem_ornegiGoal"
  "ilk_paket/eylem_ornegiGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<eylem_ornegiGoal>)))
  "Returns md5sum for a message object of type '<eylem_ornegiGoal>"
  "5be8905c3eeca2e7c5b767c76d0af813")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'eylem_ornegiGoal)))
  "Returns md5sum for a message object of type 'eylem_ornegiGoal"
  "5be8905c3eeca2e7c5b767c76d0af813")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<eylem_ornegiGoal>)))
  "Returns full string definition for message of type '<eylem_ornegiGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#hedef~%int32 sinir~%char islem~%float64 a~%float64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'eylem_ornegiGoal)))
  "Returns full string definition for message of type 'eylem_ornegiGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#hedef~%int32 sinir~%char islem~%float64 a~%float64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <eylem_ornegiGoal>))
  (cl:+ 0
     4
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <eylem_ornegiGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'eylem_ornegiGoal
    (cl:cons ':sinir (sinir msg))
    (cl:cons ':islem (islem msg))
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
