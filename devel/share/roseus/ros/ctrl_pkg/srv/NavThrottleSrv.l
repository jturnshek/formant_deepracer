;; Auto-generated. Do not edit!


(when (boundp 'ctrl_pkg::NavThrottleSrv)
  (if (not (find-package "CTRL_PKG"))
    (make-package "CTRL_PKG"))
  (shadow 'NavThrottleSrv (find-package "CTRL_PKG")))
(unless (find-package "CTRL_PKG::NAVTHROTTLESRV")
  (make-package "CTRL_PKG::NAVTHROTTLESRV"))
(unless (find-package "CTRL_PKG::NAVTHROTTLESRVREQUEST")
  (make-package "CTRL_PKG::NAVTHROTTLESRVREQUEST"))
(unless (find-package "CTRL_PKG::NAVTHROTTLESRVRESPONSE")
  (make-package "CTRL_PKG::NAVTHROTTLESRVRESPONSE"))

(in-package "ROS")





(defclass ctrl_pkg::NavThrottleSrvRequest
  :super ros::object
  :slots (_throttle ))

(defmethod ctrl_pkg::NavThrottleSrvRequest
  (:init
   (&key
    ((:throttle __throttle) 0.0)
    )
   (send-super :init)
   (setq _throttle (float __throttle))
   self)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:serialization-length
   ()
   (+
    ;; float32 _throttle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ctrl_pkg::NavThrottleSrvResponse
  :super ros::object
  :slots (_error ))

(defmethod ctrl_pkg::NavThrottleSrvResponse
  (:init
   (&key
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _error (round __error))
   self)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; int32 _error
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _error
       (write-long _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _error
     (setq _error (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ctrl_pkg::NavThrottleSrv
  :super ros::object
  :slots ())

(setf (get ctrl_pkg::NavThrottleSrv :md5sum-) "8ef012065533bc15e577d33d9dae2e5d")
(setf (get ctrl_pkg::NavThrottleSrv :datatype-) "ctrl_pkg/NavThrottleSrv")
(setf (get ctrl_pkg::NavThrottleSrv :request) ctrl_pkg::NavThrottleSrvRequest)
(setf (get ctrl_pkg::NavThrottleSrv :response) ctrl_pkg::NavThrottleSrvResponse)

(defmethod ctrl_pkg::NavThrottleSrvRequest
  (:response () (instance ctrl_pkg::NavThrottleSrvResponse :init)))

(setf (get ctrl_pkg::NavThrottleSrvRequest :md5sum-) "8ef012065533bc15e577d33d9dae2e5d")
(setf (get ctrl_pkg::NavThrottleSrvRequest :datatype-) "ctrl_pkg/NavThrottleSrvRequest")
(setf (get ctrl_pkg::NavThrottleSrvRequest :definition-)
      "float32 throttle
---
int32 error
")

(setf (get ctrl_pkg::NavThrottleSrvResponse :md5sum-) "8ef012065533bc15e577d33d9dae2e5d")
(setf (get ctrl_pkg::NavThrottleSrvResponse :datatype-) "ctrl_pkg/NavThrottleSrvResponse")
(setf (get ctrl_pkg::NavThrottleSrvResponse :definition-)
      "float32 throttle
---
int32 error
")



(provide :ctrl_pkg/NavThrottleSrv "8ef012065533bc15e577d33d9dae2e5d")


