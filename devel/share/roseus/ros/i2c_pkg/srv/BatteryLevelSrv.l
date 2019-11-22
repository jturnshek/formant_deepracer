;; Auto-generated. Do not edit!


(when (boundp 'i2c_pkg::BatteryLevelSrv)
  (if (not (find-package "I2C_PKG"))
    (make-package "I2C_PKG"))
  (shadow 'BatteryLevelSrv (find-package "I2C_PKG")))
(unless (find-package "I2C_PKG::BATTERYLEVELSRV")
  (make-package "I2C_PKG::BATTERYLEVELSRV"))
(unless (find-package "I2C_PKG::BATTERYLEVELSRVREQUEST")
  (make-package "I2C_PKG::BATTERYLEVELSRVREQUEST"))
(unless (find-package "I2C_PKG::BATTERYLEVELSRVRESPONSE")
  (make-package "I2C_PKG::BATTERYLEVELSRVRESPONSE"))

(in-package "ROS")





(defclass i2c_pkg::BatteryLevelSrvRequest
  :super ros::object
  :slots ())

(defmethod i2c_pkg::BatteryLevelSrvRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass i2c_pkg::BatteryLevelSrvResponse
  :super ros::object
  :slots (_level ))

(defmethod i2c_pkg::BatteryLevelSrvResponse
  (:init
   (&key
    ((:level __level) 0)
    )
   (send-super :init)
   (setq _level (round __level))
   self)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:serialization-length
   ()
   (+
    ;; int32 _level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _level
       (write-long _level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _level
     (setq _level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass i2c_pkg::BatteryLevelSrv
  :super ros::object
  :slots ())

(setf (get i2c_pkg::BatteryLevelSrv :md5sum-) "ded14a708dd5929a9ebf864ad17c94f5")
(setf (get i2c_pkg::BatteryLevelSrv :datatype-) "i2c_pkg/BatteryLevelSrv")
(setf (get i2c_pkg::BatteryLevelSrv :request) i2c_pkg::BatteryLevelSrvRequest)
(setf (get i2c_pkg::BatteryLevelSrv :response) i2c_pkg::BatteryLevelSrvResponse)

(defmethod i2c_pkg::BatteryLevelSrvRequest
  (:response () (instance i2c_pkg::BatteryLevelSrvResponse :init)))

(setf (get i2c_pkg::BatteryLevelSrvRequest :md5sum-) "ded14a708dd5929a9ebf864ad17c94f5")
(setf (get i2c_pkg::BatteryLevelSrvRequest :datatype-) "i2c_pkg/BatteryLevelSrvRequest")
(setf (get i2c_pkg::BatteryLevelSrvRequest :definition-)
      "---
int32 level
")

(setf (get i2c_pkg::BatteryLevelSrvResponse :md5sum-) "ded14a708dd5929a9ebf864ad17c94f5")
(setf (get i2c_pkg::BatteryLevelSrvResponse :datatype-) "i2c_pkg/BatteryLevelSrvResponse")
(setf (get i2c_pkg::BatteryLevelSrvResponse :definition-)
      "---
int32 level
")



(provide :i2c_pkg/BatteryLevelSrv "ded14a708dd5929a9ebf864ad17c94f5")


