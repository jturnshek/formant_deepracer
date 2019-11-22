; Auto-generated. Do not edit!


(cl:in-package ctrl_pkg-srv)


;//! \htmlinclude ModelStateSrv-request.msg.html

(cl:defclass <ModelStateSrv-request> (roslisp-msg-protocol:ros-message)
  ((model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform "")
   (img_format
    :reader img_format
    :initarg :img_format
    :type cl:string
    :initform "")
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (num_channels
    :reader num_channels
    :initarg :num_channels
    :type cl:integer
    :initform 0)
   (platform
    :reader platform
    :initarg :platform
    :type cl:integer
    :initform 0)
   (taskType
    :reader taskType
    :initarg :taskType
    :type cl:fixnum
    :initform 0)
   (preProcessType
    :reader preProcessType
    :initarg :preProcessType
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ModelStateSrv-request (<ModelStateSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModelStateSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModelStateSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ctrl_pkg-srv:<ModelStateSrv-request> is deprecated: use ctrl_pkg-srv:ModelStateSrv-request instead.")))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <ModelStateSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:model_name-val is deprecated.  Use ctrl_pkg-srv:model_name instead.")
  (model_name m))

(cl:ensure-generic-function 'img_format-val :lambda-list '(m))
(cl:defmethod img_format-val ((m <ModelStateSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:img_format-val is deprecated.  Use ctrl_pkg-srv:img_format instead.")
  (img_format m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <ModelStateSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:width-val is deprecated.  Use ctrl_pkg-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <ModelStateSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:height-val is deprecated.  Use ctrl_pkg-srv:height instead.")
  (height m))

(cl:ensure-generic-function 'num_channels-val :lambda-list '(m))
(cl:defmethod num_channels-val ((m <ModelStateSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:num_channels-val is deprecated.  Use ctrl_pkg-srv:num_channels instead.")
  (num_channels m))

(cl:ensure-generic-function 'platform-val :lambda-list '(m))
(cl:defmethod platform-val ((m <ModelStateSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:platform-val is deprecated.  Use ctrl_pkg-srv:platform instead.")
  (platform m))

(cl:ensure-generic-function 'taskType-val :lambda-list '(m))
(cl:defmethod taskType-val ((m <ModelStateSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:taskType-val is deprecated.  Use ctrl_pkg-srv:taskType instead.")
  (taskType m))

(cl:ensure-generic-function 'preProcessType-val :lambda-list '(m))
(cl:defmethod preProcessType-val ((m <ModelStateSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:preProcessType-val is deprecated.  Use ctrl_pkg-srv:preProcessType instead.")
  (preProcessType m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModelStateSrv-request>) ostream)
  "Serializes a message object of type '<ModelStateSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'img_format))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'img_format))
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_channels)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'platform)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'taskType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'preProcessType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModelStateSrv-request>) istream)
  "Deserializes a message object of type '<ModelStateSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'img_format) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'img_format) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_channels) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'platform) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskType) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'preProcessType) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModelStateSrv-request>)))
  "Returns string type for a service object of type '<ModelStateSrv-request>"
  "ctrl_pkg/ModelStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModelStateSrv-request)))
  "Returns string type for a service object of type 'ModelStateSrv-request"
  "ctrl_pkg/ModelStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModelStateSrv-request>)))
  "Returns md5sum for a message object of type '<ModelStateSrv-request>"
  "ccd9fcb55e6e203501cbffcaff851b4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModelStateSrv-request)))
  "Returns md5sum for a message object of type 'ModelStateSrv-request"
  "ccd9fcb55e6e203501cbffcaff851b4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModelStateSrv-request>)))
  "Returns full string definition for message of type '<ModelStateSrv-request>"
  (cl:format cl:nil "string model_name~%string img_format~%int32 width~%int32 height~%int32 num_channels~%int32 platform~%int8 taskType~%int8 preProcessType~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModelStateSrv-request)))
  "Returns full string definition for message of type 'ModelStateSrv-request"
  (cl:format cl:nil "string model_name~%string img_format~%int32 width~%int32 height~%int32 num_channels~%int32 platform~%int8 taskType~%int8 preProcessType~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModelStateSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_name))
     4 (cl:length (cl:slot-value msg 'img_format))
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModelStateSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ModelStateSrv-request
    (cl:cons ':model_name (model_name msg))
    (cl:cons ':img_format (img_format msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':num_channels (num_channels msg))
    (cl:cons ':platform (platform msg))
    (cl:cons ':taskType (taskType msg))
    (cl:cons ':preProcessType (preProcessType msg))
))
;//! \htmlinclude ModelStateSrv-response.msg.html

(cl:defclass <ModelStateSrv-response> (roslisp-msg-protocol:ros-message)
  ((hasError
    :reader hasError
    :initarg :hasError
    :type cl:integer
    :initform 0))
)

(cl:defclass ModelStateSrv-response (<ModelStateSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModelStateSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModelStateSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ctrl_pkg-srv:<ModelStateSrv-response> is deprecated: use ctrl_pkg-srv:ModelStateSrv-response instead.")))

(cl:ensure-generic-function 'hasError-val :lambda-list '(m))
(cl:defmethod hasError-val ((m <ModelStateSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:hasError-val is deprecated.  Use ctrl_pkg-srv:hasError instead.")
  (hasError m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModelStateSrv-response>) ostream)
  "Serializes a message object of type '<ModelStateSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'hasError)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModelStateSrv-response>) istream)
  "Deserializes a message object of type '<ModelStateSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hasError) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModelStateSrv-response>)))
  "Returns string type for a service object of type '<ModelStateSrv-response>"
  "ctrl_pkg/ModelStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModelStateSrv-response)))
  "Returns string type for a service object of type 'ModelStateSrv-response"
  "ctrl_pkg/ModelStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModelStateSrv-response>)))
  "Returns md5sum for a message object of type '<ModelStateSrv-response>"
  "ccd9fcb55e6e203501cbffcaff851b4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModelStateSrv-response)))
  "Returns md5sum for a message object of type 'ModelStateSrv-response"
  "ccd9fcb55e6e203501cbffcaff851b4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModelStateSrv-response>)))
  "Returns full string definition for message of type '<ModelStateSrv-response>"
  (cl:format cl:nil "int32 hasError~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModelStateSrv-response)))
  "Returns full string definition for message of type 'ModelStateSrv-response"
  (cl:format cl:nil "int32 hasError~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModelStateSrv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModelStateSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ModelStateSrv-response
    (cl:cons ':hasError (hasError msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ModelStateSrv)))
  'ModelStateSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ModelStateSrv)))
  'ModelStateSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModelStateSrv)))
  "Returns string type for a service object of type '<ModelStateSrv>"
  "ctrl_pkg/ModelStateSrv")