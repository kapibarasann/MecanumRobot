; Auto-generated. Do not edit!


(cl:in-package mecanum_robot-msg)


;//! \htmlinclude rotary_encoder.msg.html

(cl:defclass <rotary_encoder> (roslisp-msg-protocol:ros-message)
  ((rf
    :reader rf
    :initarg :rf
    :type cl:integer
    :initform 0)
   (rb
    :reader rb
    :initarg :rb
    :type cl:integer
    :initform 0)
   (lf
    :reader lf
    :initarg :lf
    :type cl:integer
    :initform 0)
   (lb
    :reader lb
    :initarg :lb
    :type cl:integer
    :initform 0))
)

(cl:defclass rotary_encoder (<rotary_encoder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rotary_encoder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rotary_encoder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mecanum_robot-msg:<rotary_encoder> is deprecated: use mecanum_robot-msg:rotary_encoder instead.")))

(cl:ensure-generic-function 'rf-val :lambda-list '(m))
(cl:defmethod rf-val ((m <rotary_encoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mecanum_robot-msg:rf-val is deprecated.  Use mecanum_robot-msg:rf instead.")
  (rf m))

(cl:ensure-generic-function 'rb-val :lambda-list '(m))
(cl:defmethod rb-val ((m <rotary_encoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mecanum_robot-msg:rb-val is deprecated.  Use mecanum_robot-msg:rb instead.")
  (rb m))

(cl:ensure-generic-function 'lf-val :lambda-list '(m))
(cl:defmethod lf-val ((m <rotary_encoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mecanum_robot-msg:lf-val is deprecated.  Use mecanum_robot-msg:lf instead.")
  (lf m))

(cl:ensure-generic-function 'lb-val :lambda-list '(m))
(cl:defmethod lb-val ((m <rotary_encoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mecanum_robot-msg:lb-val is deprecated.  Use mecanum_robot-msg:lb instead.")
  (lb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rotary_encoder>) ostream)
  "Serializes a message object of type '<rotary_encoder>"
  (cl:let* ((signed (cl:slot-value msg 'rf)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rb)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lf)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lb)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rotary_encoder>) istream)
  "Deserializes a message object of type '<rotary_encoder>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rf) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rb) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lf) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lb) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rotary_encoder>)))
  "Returns string type for a message object of type '<rotary_encoder>"
  "mecanum_robot/rotary_encoder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rotary_encoder)))
  "Returns string type for a message object of type 'rotary_encoder"
  "mecanum_robot/rotary_encoder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rotary_encoder>)))
  "Returns md5sum for a message object of type '<rotary_encoder>"
  "74f45829c12e561eeb9d8f0eca726753")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rotary_encoder)))
  "Returns md5sum for a message object of type 'rotary_encoder"
  "74f45829c12e561eeb9d8f0eca726753")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rotary_encoder>)))
  "Returns full string definition for message of type '<rotary_encoder>"
  (cl:format cl:nil "int32 rf~%int32 rb~%int32 lf~%int32 lb~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rotary_encoder)))
  "Returns full string definition for message of type 'rotary_encoder"
  (cl:format cl:nil "int32 rf~%int32 rb~%int32 lf~%int32 lb~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rotary_encoder>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rotary_encoder>))
  "Converts a ROS message object to a list"
  (cl:list 'rotary_encoder
    (cl:cons ':rf (rf msg))
    (cl:cons ':rb (rb msg))
    (cl:cons ':lf (lf msg))
    (cl:cons ':lb (lb msg))
))
