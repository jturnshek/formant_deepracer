;; Auto-generated. Do not edit!


(when (boundp 'ctrl_pkg::ModelStateSrv)
  (if (not (find-package "CTRL_PKG"))
    (make-package "CTRL_PKG"))
  (shadow 'ModelStateSrv (find-package "CTRL_PKG")))
(unless (find-package "CTRL_PKG::MODELSTATESRV")
  (make-package "CTRL_PKG::MODELSTATESRV"))
(unless (find-package "CTRL_PKG::MODELSTATESRVREQUEST")
  (make-package "CTRL_PKG::MODELSTATESRVREQUEST"))
(unless (find-package "CTRL_PKG::MODELSTATESRVRESPONSE")
  (make-package "CTRL_PKG::MODELSTATESRVRESPONSE"))

(in-package "ROS")





(defclass ctrl_pkg::ModelStateSrvRequest
  :super ros::object
  :slots (_model_name _img_format _width _height _num_channels _platform _taskType _preProcessType ))

(defmethod ctrl_pkg::ModelStateSrvRequest
  (:init
   (&key
    ((:model_name __model_name) "")
    ((:img_format __img_format) "")
    ((:width __width) 0)
    ((:height __height) 0)
    ((:num_channels __num_channels) 0)
    ((:platform __platform) 0)
    ((:taskType __taskType) 0)
    ((:preProcessType __preProcessType) 0)
    )
   (send-super :init)
   (setq _model_name (string __model_name))
   (setq _img_format (string __img_format))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _num_channels (round __num_channels))
   (setq _platform (round __platform))
   (setq _taskType (round __taskType))
   (setq _preProcessType (round __preProcessType))
   self)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:img_format
   (&optional __img_format)
   (if __img_format (setq _img_format __img_format)) _img_format)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:num_channels
   (&optional __num_channels)
   (if __num_channels (setq _num_channels __num_channels)) _num_channels)
  (:platform
   (&optional __platform)
   (if __platform (setq _platform __platform)) _platform)
  (:taskType
   (&optional __taskType)
   (if __taskType (setq _taskType __taskType)) _taskType)
  (:preProcessType
   (&optional __preProcessType)
   (if __preProcessType (setq _preProcessType __preProcessType)) _preProcessType)
  (:serialization-length
   ()
   (+
    ;; string _model_name
    4 (length _model_name)
    ;; string _img_format
    4 (length _img_format)
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; int32 _num_channels
    4
    ;; int32 _platform
    4
    ;; int8 _taskType
    1
    ;; int8 _preProcessType
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; string _img_format
       (write-long (length _img_format) s) (princ _img_format s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _num_channels
       (write-long _num_channels s)
     ;; int32 _platform
       (write-long _platform s)
     ;; int8 _taskType
       (write-byte _taskType s)
     ;; int8 _preProcessType
       (write-byte _preProcessType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _img_format
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _img_format (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_channels
     (setq _num_channels (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _platform
     (setq _platform (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _taskType
     (setq _taskType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _taskType 127) (setq _taskType (- _taskType 256)))
   ;; int8 _preProcessType
     (setq _preProcessType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _preProcessType 127) (setq _preProcessType (- _preProcessType 256)))
   ;;
   self)
  )

(defclass ctrl_pkg::ModelStateSrvResponse
  :super ros::object
  :slots (_hasError ))

(defmethod ctrl_pkg::ModelStateSrvResponse
  (:init
   (&key
    ((:hasError __hasError) 0)
    )
   (send-super :init)
   (setq _hasError (round __hasError))
   self)
  (:hasError
   (&optional __hasError)
   (if __hasError (setq _hasError __hasError)) _hasError)
  (:serialization-length
   ()
   (+
    ;; int32 _hasError
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _hasError
       (write-long _hasError s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _hasError
     (setq _hasError (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ctrl_pkg::ModelStateSrv
  :super ros::object
  :slots ())

(setf (get ctrl_pkg::ModelStateSrv :md5sum-) "ccd9fcb55e6e203501cbffcaff851b4f")
(setf (get ctrl_pkg::ModelStateSrv :datatype-) "ctrl_pkg/ModelStateSrv")
(setf (get ctrl_pkg::ModelStateSrv :request) ctrl_pkg::ModelStateSrvRequest)
(setf (get ctrl_pkg::ModelStateSrv :response) ctrl_pkg::ModelStateSrvResponse)

(defmethod ctrl_pkg::ModelStateSrvRequest
  (:response () (instance ctrl_pkg::ModelStateSrvResponse :init)))

(setf (get ctrl_pkg::ModelStateSrvRequest :md5sum-) "ccd9fcb55e6e203501cbffcaff851b4f")
(setf (get ctrl_pkg::ModelStateSrvRequest :datatype-) "ctrl_pkg/ModelStateSrvRequest")
(setf (get ctrl_pkg::ModelStateSrvRequest :definition-)
      "string model_name
string img_format
int32 width
int32 height
int32 num_channels
int32 platform
int8 taskType
int8 preProcessType
---
int32 hasError
")

(setf (get ctrl_pkg::ModelStateSrvResponse :md5sum-) "ccd9fcb55e6e203501cbffcaff851b4f")
(setf (get ctrl_pkg::ModelStateSrvResponse :datatype-) "ctrl_pkg/ModelStateSrvResponse")
(setf (get ctrl_pkg::ModelStateSrvResponse :definition-)
      "string model_name
string img_format
int32 width
int32 height
int32 num_channels
int32 platform
int8 taskType
int8 preProcessType
---
int32 hasError
")



(provide :ctrl_pkg/ModelStateSrv "ccd9fcb55e6e203501cbffcaff851b4f")


