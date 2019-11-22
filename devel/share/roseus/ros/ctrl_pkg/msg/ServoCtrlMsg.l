;; Auto-generated. Do not edit!


(when (boundp 'ctrl_pkg::ServoCtrlMsg)
  (if (not (find-package "CTRL_PKG"))
    (make-package "CTRL_PKG"))
  (shadow 'ServoCtrlMsg (find-package "CTRL_PKG")))
(unless (find-package "CTRL_PKG::SERVOCTRLMSG")
  (make-package "CTRL_PKG::SERVOCTRLMSG"))

(in-package "ROS")
;;//! \htmlinclude ServoCtrlMsg.msg.html


(defclass ctrl_pkg::ServoCtrlMsg
  :super ros::object
  :slots (_angle _throttle ))

(defmethod ctrl_pkg::ServoCtrlMsg
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:throttle __throttle) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _throttle (float __throttle))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:serialization-length
   ()
   (+
    ;; float32 _angle
    4
    ;; float32 _throttle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ctrl_pkg::ServoCtrlMsg :md5sum-) "5c94514727f23b094945c5660fa4835a")
(setf (get ctrl_pkg::ServoCtrlMsg :datatype-) "ctrl_pkg/ServoCtrlMsg")
(setf (get ctrl_pkg::ServoCtrlMsg :definition-)
      "float32 angle
float32 throttle
")



(provide :ctrl_pkg/ServoCtrlMsg "5c94514727f23b094945c5660fa4835a")


