;; Auto-generated. Do not edit!


(when (boundp 'ctrl_pkg::ActiveStateSrv)
  (if (not (find-package "CTRL_PKG"))
    (make-package "CTRL_PKG"))
  (shadow 'ActiveStateSrv (find-package "CTRL_PKG")))
(unless (find-package "CTRL_PKG::ACTIVESTATESRV")
  (make-package "CTRL_PKG::ACTIVESTATESRV"))
(unless (find-package "CTRL_PKG::ACTIVESTATESRVREQUEST")
  (make-package "CTRL_PKG::ACTIVESTATESRVREQUEST"))
(unless (find-package "CTRL_PKG::ACTIVESTATESRVRESPONSE")
  (make-package "CTRL_PKG::ACTIVESTATESRVRESPONSE"))

(in-package "ROS")





(defclass ctrl_pkg::ActiveStateSrvRequest
  :super ros::object
  :slots (_state ))

(defmethod ctrl_pkg::ActiveStateSrvRequest
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;;
   self)
  )

(defclass ctrl_pkg::ActiveStateSrvResponse
  :super ros::object
  :slots (_error ))

(defmethod ctrl_pkg::ActiveStateSrvResponse
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

(defclass ctrl_pkg::ActiveStateSrv
  :super ros::object
  :slots ())

(setf (get ctrl_pkg::ActiveStateSrv :md5sum-) "c83aa8233d546528849971b5100ae7d6")
(setf (get ctrl_pkg::ActiveStateSrv :datatype-) "ctrl_pkg/ActiveStateSrv")
(setf (get ctrl_pkg::ActiveStateSrv :request) ctrl_pkg::ActiveStateSrvRequest)
(setf (get ctrl_pkg::ActiveStateSrv :response) ctrl_pkg::ActiveStateSrvResponse)

(defmethod ctrl_pkg::ActiveStateSrvRequest
  (:response () (instance ctrl_pkg::ActiveStateSrvResponse :init)))

(setf (get ctrl_pkg::ActiveStateSrvRequest :md5sum-) "c83aa8233d546528849971b5100ae7d6")
(setf (get ctrl_pkg::ActiveStateSrvRequest :datatype-) "ctrl_pkg/ActiveStateSrvRequest")
(setf (get ctrl_pkg::ActiveStateSrvRequest :definition-)
      "int8 state
---
int32 error
")

(setf (get ctrl_pkg::ActiveStateSrvResponse :md5sum-) "c83aa8233d546528849971b5100ae7d6")
(setf (get ctrl_pkg::ActiveStateSrvResponse :datatype-) "ctrl_pkg/ActiveStateSrvResponse")
(setf (get ctrl_pkg::ActiveStateSrvResponse :definition-)
      "int8 state
---
int32 error
")



(provide :ctrl_pkg/ActiveStateSrv "c83aa8233d546528849971b5100ae7d6")


