; Auto-generated. Do not edit!


(cl:in-package i2c_pkg-srv)


;//! \htmlinclude BatteryLevelSrv-request.msg.html

(cl:defclass <BatteryLevelSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass BatteryLevelSrv-request (<BatteryLevelSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryLevelSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryLevelSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2c_pkg-srv:<BatteryLevelSrv-request> is deprecated: use i2c_pkg-srv:BatteryLevelSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryLevelSrv-request>) ostream)
  "Serializes a message object of type '<BatteryLevelSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryLevelSrv-request>) istream)
  "Deserializes a message object of type '<BatteryLevelSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryLevelSrv-request>)))
  "Returns string type for a service object of type '<BatteryLevelSrv-request>"
  "i2c_pkg/BatteryLevelSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryLevelSrv-request)))
  "Returns string type for a service object of type 'BatteryLevelSrv-request"
  "i2c_pkg/BatteryLevelSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryLevelSrv-request>)))
  "Returns md5sum for a message object of type '<BatteryLevelSrv-request>"
  "ded14a708dd5929a9ebf864ad17c94f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryLevelSrv-request)))
  "Returns md5sum for a message object of type 'BatteryLevelSrv-request"
  "ded14a708dd5929a9ebf864ad17c94f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryLevelSrv-request>)))
  "Returns full string definition for message of type '<BatteryLevelSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryLevelSrv-request)))
  "Returns full string definition for message of type 'BatteryLevelSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryLevelSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryLevelSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryLevelSrv-request
))
;//! \htmlinclude BatteryLevelSrv-response.msg.html

(cl:defclass <BatteryLevelSrv-response> (roslisp-msg-protocol:ros-message)
  ((level
    :reader level
    :initarg :level
    :type cl:integer
    :initform 0))
)

(cl:defclass BatteryLevelSrv-response (<BatteryLevelSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryLevelSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryLevelSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name i2c_pkg-srv:<BatteryLevelSrv-response> is deprecated: use i2c_pkg-srv:BatteryLevelSrv-response instead.")))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <BatteryLevelSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader i2c_pkg-srv:level-val is deprecated.  Use i2c_pkg-srv:level instead.")
  (level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryLevelSrv-response>) ostream)
  "Serializes a message object of type '<BatteryLevelSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryLevelSrv-response>) istream)
  "Deserializes a message object of type '<BatteryLevelSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryLevelSrv-response>)))
  "Returns string type for a service object of type '<BatteryLevelSrv-response>"
  "i2c_pkg/BatteryLevelSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryLevelSrv-response)))
  "Returns string type for a service object of type 'BatteryLevelSrv-response"
  "i2c_pkg/BatteryLevelSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryLevelSrv-response>)))
  "Returns md5sum for a message object of type '<BatteryLevelSrv-response>"
  "ded14a708dd5929a9ebf864ad17c94f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryLevelSrv-response)))
  "Returns md5sum for a message object of type 'BatteryLevelSrv-response"
  "ded14a708dd5929a9ebf864ad17c94f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryLevelSrv-response>)))
  "Returns full string definition for message of type '<BatteryLevelSrv-response>"
  (cl:format cl:nil "int32 level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryLevelSrv-response)))
  "Returns full string definition for message of type 'BatteryLevelSrv-response"
  (cl:format cl:nil "int32 level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryLevelSrv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryLevelSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryLevelSrv-response
    (cl:cons ':level (level msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BatteryLevelSrv)))
  'BatteryLevelSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BatteryLevelSrv)))
  'BatteryLevelSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryLevelSrv)))
  "Returns string type for a service object of type '<BatteryLevelSrv>"
  "i2c_pkg/BatteryLevelSrv")