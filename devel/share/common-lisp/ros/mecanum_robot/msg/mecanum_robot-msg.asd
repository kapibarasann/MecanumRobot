
(cl:in-package :asdf)

(defsystem "mecanum_robot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mecanum" :depends-on ("_package_mecanum"))
    (:file "_package_mecanum" :depends-on ("_package"))
    (:file "rotary_encoder" :depends-on ("_package_rotary_encoder"))
    (:file "_package_rotary_encoder" :depends-on ("_package"))
  ))