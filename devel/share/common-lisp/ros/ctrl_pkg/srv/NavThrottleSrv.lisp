; Auto-generated. Do not edit!


(cl:in-package ctrl_pkg-srv)


;//! \htmlinclude NavThrottleSrv-request.msg.html

(cl:defclass <NavThrottleSrv-request> (roslisp-msg-protocol:ros-message)
  ((throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0))
)

(cl:defclass NavThrottleSrv-request (<NavThrottleSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavThrottleSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavThrottleSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ctrl_pkg-srv:<NavThrottleSrv-request> is deprecated: use ctrl_pkg-srv:NavThrottleSrv-request instead.")))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <NavThrottleSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:throttle-val is deprecated.  Use ctrl_pkg-srv:throttle instead.")
  (throttle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavThrottleSrv-request>) ostream)
  "Serializes a message object of type '<NavThrottleSrv-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavThrottleSrv-request>) istream)
  "Deserializes a message object of type '<NavThrottleSrv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavThrottleSrv-request>)))
  "Returns string type for a service object of type '<NavThrottleSrv-request>"
  "ctrl_pkg/NavThrottleSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavThrottleSrv-request)))
  "Returns string type for a service object of type 'NavThrottleSrv-request"
  "ctrl_pkg/NavThrottleSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavThrottleSrv-request>)))
  "Returns md5sum for a message object of type '<NavThrottleSrv-request>"
  "8ef012065533bc15e577d33d9dae2e5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavThrottleSrv-request)))
  "Returns md5sum for a message object of type 'NavThrottleSrv-request"
  "8ef012065533bc15e577d33d9dae2e5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavThrottleSrv-request>)))
  "Returns full string definition for message of type '<NavThrottleSrv-request>"
  (cl:format cl:nil "float32 throttle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavThrottleSrv-request)))
  "Returns full string definition for message of type 'NavThrottleSrv-request"
  (cl:format cl:nil "float32 throttle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavThrottleSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavThrottleSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NavThrottleSrv-request
    (cl:cons ':throttle (throttle msg))
))
;//! \htmlinclude NavThrottleSrv-response.msg.html

(cl:defclass <NavThrottleSrv-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:integer
    :initform 0))
)

(cl:defclass NavThrottleSrv-response (<NavThrottleSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavThrottleSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavThrottleSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ctrl_pkg-srv:<NavThrottleSrv-response> is deprecated: use ctrl_pkg-srv:NavThrottleSrv-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <NavThrottleSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:error-val is deprecated.  Use ctrl_pkg-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavThrottleSrv-response>) ostream)
  "Serializes a message object of type '<NavThrottleSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavThrottleSrv-response>) istream)
  "Deserializes a message object of type '<NavThrottleSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavThrottleSrv-response>)))
  "Returns string type for a service object of type '<NavThrottleSrv-response>"
  "ctrl_pkg/NavThrottleSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavThrottleSrv-response)))
  "Returns string type for a service object of type 'NavThrottleSrv-response"
  "ctrl_pkg/NavThrottleSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavThrottleSrv-response>)))
  "Returns md5sum for a message object of type '<NavThrottleSrv-response>"
  "8ef012065533bc15e577d33d9dae2e5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavThrottleSrv-response)))
  "Returns md5sum for a message object of type 'NavThrottleSrv-response"
  "8ef012065533bc15e577d33d9dae2e5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavThrottleSrv-response>)))
  "Returns full string definition for message of type '<NavThrottleSrv-response>"
  (cl:format cl:nil "int32 error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavThrottleSrv-response)))
  "Returns full string definition for message of type 'NavThrottleSrv-response"
  (cl:format cl:nil "int32 error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavThrottleSrv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavThrottleSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NavThrottleSrv-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NavThrottleSrv)))
  'NavThrottleSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NavThrottleSrv)))
  'NavThrottleSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavThrottleSrv)))
  "Returns string type for a service object of type '<NavThrottleSrv>"
  "ctrl_pkg/NavThrottleSrv")