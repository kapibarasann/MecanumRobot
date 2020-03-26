;; Auto-generated. Do not edit!


(when (boundp 'mecanum_robot::mecanum)
  (if (not (find-package "MECANUM_ROBOT"))
    (make-package "MECANUM_ROBOT"))
  (shadow 'mecanum (find-package "MECANUM_ROBOT")))
(unless (find-package "MECANUM_ROBOT::MECANUM")
  (make-package "MECANUM_ROBOT::MECANUM"))

(in-package "ROS")
;;//! \htmlinclude mecanum.msg.html


(defclass mecanum_robot::mecanum
  :super ros::object
  :slots (_move_name _mode _speed _direction _stop ))

(defmethod mecanum_robot::mecanum
  (:init
   (&key
    ((:move_name __move_name) "")
    ((:mode __mode) "")
    ((:speed __speed) 0.0)
    ((:direction __direction) 0.0)
    ((:stop __stop) nil)
    )
   (send-super :init)
   (setq _move_name (string __move_name))
   (setq _mode (string __mode))
   (setq _speed (float __speed))
   (setq _direction (float __direction))
   (setq _stop __stop)
   self)
  (:move_name
   (&optional __move_name)
   (if __move_name (setq _move_name __move_name)) _move_name)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:stop
   (&optional __stop)
   (if __stop (setq _stop __stop)) _stop)
  (:serialization-length
   ()
   (+
    ;; string _move_name
    4 (length _move_name)
    ;; string _mode
    4 (length _mode)
    ;; float32 _speed
    4
    ;; float32 _direction
    4
    ;; bool _stop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _move_name
       (write-long (length _move_name) s) (princ _move_name s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _stop
       (if _stop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _move_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _move_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _direction
     (setq _direction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _stop
     (setq _stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mecanum_robot::mecanum :md5sum-) "82aef74aa7bb475fb26508dafa9bb21f")
(setf (get mecanum_robot::mecanum :datatype-) "mecanum_robot/mecanum")
(setf (get mecanum_robot::mecanum :definition-)
      "string move_name
string mode
float32 speed
float32 direction
bool stop

")



(provide :mecanum_robot/mecanum "82aef74aa7bb475fb26508dafa9bb21f")


