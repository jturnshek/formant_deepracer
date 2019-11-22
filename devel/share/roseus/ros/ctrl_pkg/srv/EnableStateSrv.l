;; Auto-generated. Do not edit!


(when (boundp 'ctrl_pkg::EnableStateSrv)
  (if (not (find-package "CTRL_PKG"))
    (make-package "CTRL_PKG"))
  (shadow 'EnableStateSrv (find-package "CTRL_PKG")))
(unless (find-package "CTRL_PKG::ENABLESTATESRV")
  (make-package "CTRL_PKG::ENABLESTATESRV"))
(unless (find-package "CTRL_PKG::ENABLESTATESRVREQUEST")
  (make-package "CTRL_PKG::ENABLESTATESRVREQUEST"))
(unless (find-package "CTRL_PKG::ENABLESTATESRVRESPONSE")
  (make-package "CTRL_PKG::ENABLESTATESRVRESPONSE"))

(in-package "ROS")





(defclass ctrl_pkg::EnableStateSrvRequest
  :super ros::object
  :slots (_isActive ))

(defmethod ctrl_pkg::EnableStateSrvRequest
  (:init
   (&key
    ((:isActive __isActive) nil)
    )
   (send-super :init)
   (setq _isActive __isActive)
   self)
  (:isActive
   (&optional __isActive)
   (if __isActive (setq _isActive __isActive)) _isActive)
  (:serialization-length
   ()
   (+
    ;; bool _isActive
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isActive
       (if _isActive (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isActive
     (setq _isActive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ctrl_pkg::EnableStateSrvResponse
  :super ros::object
  :slots (_error ))

(defmethod ctrl_pkg::EnableStateSrvResponse
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

(defclass ctrl_pkg::EnableStateSrv
  :super ros::object
  :slots ())

(setf (get ctrl_pkg::EnableStateSrv :md5sum-) "232cd2b9458497f0f728a51b5639d139")
(setf (get ctrl_pkg::EnableStateSrv :datatype-) "ctrl_pkg/EnableStateSrv")
(setf (get ctrl_pkg::EnableStateSrv :request) ctrl_pkg::EnableStateSrvRequest)
(setf (get ctrl_pkg::EnableStateSrv :response) ctrl_pkg::EnableStateSrvResponse)

(defmethod ctrl_pkg::EnableStateSrvRequest
  (:response () (instance ctrl_pkg::EnableStateSrvResponse :init)))

(setf (get ctrl_pkg::EnableStateSrvRequest :md5sum-) "232cd2b9458497f0f728a51b5639d139")
(setf (get ctrl_pkg::EnableStateSrvRequest :datatype-) "ctrl_pkg/EnableStateSrvRequest")
(setf (get ctrl_pkg::EnableStateSrvRequest :definition-)
      "bool isActive
---
int32 error
")

(setf (get ctrl_pkg::EnableStateSrvResponse :md5sum-) "232cd2b9458497f0f728a51b5639d139")
(setf (get ctrl_pkg::EnableStateSrvResponse :datatype-) "ctrl_pkg/EnableStateSrvResponse")
(setf (get ctrl_pkg::EnableStateSrvResponse :definition-)
      "bool isActive
---
int32 error
")



(provide :ctrl_pkg/EnableStateSrv "232cd2b9458497f0f728a51b5639d139")


