; Auto-generated. Do not edit!


(cl:in-package mecanum_robot-msg)


;//! \htmlinclude mecanum.msg.html

(cl:defclass <mecanum> (roslisp-msg-protocol:ros-message)
  ((move_name
    :reader move_name
    :initarg :move_name
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:float
    :initform 0.0)
   (stop
    :reader stop
    :initarg :stop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass mecanum (<mecanum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mecanum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mecanum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mecanum_robot-msg:<mecanum> is deprecated: use mecanum_robot-msg:mecanum instead.")))

(cl:ensure-generic-function 'move_name-val :lambda-list '(m))
(cl:defmethod move_name-val ((m <mecanum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mecanum_robot-msg:move_name-val is deprecated.  Use mecanum_robot-msg:move_name instead.")
  (move_name m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <mecanum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mecanum_robot-msg:mode-val is deprecated.  Use mecanum_robot-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <mecanum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mecanum_robot-msg:speed-val is deprecated.  Use mecanum_robot-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <mecanum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mecanum_robot-msg:direction-val is deprecated.  Use mecanum_robot-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <mecanum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mecanum_robot-msg:stop-val is deprecated.  Use mecanum_robot-msg:stop instead.")
  (stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mecanum>) ostream)
  "Serializes a message object of type '<mecanum>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'move_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'move_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mecanum>) istream)
  "Deserializes a message object of type '<mecanum>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'move_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'move_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'stop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mecanum>)))
  "Returns string type for a message object of type '<mecanum>"
  "mecanum_robot/mecanum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mecanum)))
  "Returns string type for a message object of type 'mecanum"
  "mecanum_robot/mecanum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mecanum>)))
  "Returns md5sum for a message object of type '<mecanum>"
  "82aef74aa7bb475fb26508dafa9bb21f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mecanum)))
  "Returns md5sum for a message object of type 'mecanum"
  "82aef74aa7bb475fb26508dafa9bb21f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mecanum>)))
  "Returns full string definition for message of type '<mecanum>"
  (cl:format cl:nil "string move_name~%string mode~%float32 speed~%float32 direction~%bool stop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mecanum)))
  "Returns full string definition for message of type 'mecanum"
  (cl:format cl:nil "string move_name~%string mode~%float32 speed~%float32 direction~%bool stop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mecanum>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'move_name))
     4 (cl:length (cl:slot-value msg 'mode))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mecanum>))
  "Converts a ROS message object to a list"
  (cl:list 'mecanum
    (cl:cons ':move_name (move_name msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':stop (stop msg))
))
