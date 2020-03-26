;; Auto-generated. Do not edit!


(when (boundp 'mecanum_robot::rotary_encoder)
  (if (not (find-package "MECANUM_ROBOT"))
    (make-package "MECANUM_ROBOT"))
  (shadow 'rotary_encoder (find-package "MECANUM_ROBOT")))
(unless (find-package "MECANUM_ROBOT::ROTARY_ENCODER")
  (make-package "MECANUM_ROBOT::ROTARY_ENCODER"))

(in-package "ROS")
;;//! \htmlinclude rotary_encoder.msg.html


(defclass mecanum_robot::rotary_encoder
  :super ros::object
  :slots (_rf _rb _lf _lb ))

(defmethod mecanum_robot::rotary_encoder
  (:init
   (&key
    ((:rf __rf) 0)
    ((:rb __rb) 0)
    ((:lf __lf) 0)
    ((:lb __lb) 0)
    )
   (send-super :init)
   (setq _rf (round __rf))
   (setq _rb (round __rb))
   (setq _lf (round __lf))
   (setq _lb (round __lb))
   self)
  (:rf
   (&optional __rf)
   (if __rf (setq _rf __rf)) _rf)
  (:rb
   (&optional __rb)
   (if __rb (setq _rb __rb)) _rb)
  (:lf
   (&optional __lf)
   (if __lf (setq _lf __lf)) _lf)
  (:lb
   (&optional __lb)
   (if __lb (setq _lb __lb)) _lb)
  (:serialization-length
   ()
   (+
    ;; int32 _rf
    4
    ;; int32 _rb
    4
    ;; int32 _lf
    4
    ;; int32 _lb
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _rf
       (write-long _rf s)
     ;; int32 _rb
       (write-long _rb s)
     ;; int32 _lf
       (write-long _lf s)
     ;; int32 _lb
       (write-long _lb s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _rf
     (setq _rf (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rb
     (setq _rb (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lf
     (setq _lf (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lb
     (setq _lb (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mecanum_robot::rotary_encoder :md5sum-) "74f45829c12e561eeb9d8f0eca726753")
(setf (get mecanum_robot::rotary_encoder :datatype-) "mecanum_robot/rotary_encoder")
(setf (get mecanum_robot::rotary_encoder :definition-)
      "int32 rf
int32 rb
int32 lf
int32 lb
")



(provide :mecanum_robot/rotary_encoder "74f45829c12e561eeb9d8f0eca726753")


