; Auto-generated. Do not edit!


(cl:in-package ctrl_pkg-srv)


;//! \htmlinclude ActiveStateSrv-request.msg.html

(cl:defclass <ActiveStateSrv-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ActiveStateSrv-request (<ActiveStateSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActiveStateSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActiveStateSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ctrl_pkg-srv:<ActiveStateSrv-request> is deprecated: use ctrl_pkg-srv:ActiveStateSrv-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ActiveStateSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:state-val is deprecated.  Use ctrl_pkg-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActiveStateSrv-request>) ostream)
  "Serializes a message object of type '<ActiveStateSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActiveStateSrv-request>) istream)
  "Deserializes a message object of type '<ActiveStateSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActiveStateSrv-request>)))
  "Returns string type for a service object of type '<ActiveStateSrv-request>"
  "ctrl_pkg/ActiveStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActiveStateSrv-request)))
  "Returns string type for a service object of type 'ActiveStateSrv-request"
  "ctrl_pkg/ActiveStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActiveStateSrv-request>)))
  "Returns md5sum for a message object of type '<ActiveStateSrv-request>"
  "c83aa8233d546528849971b5100ae7d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActiveStateSrv-request)))
  "Returns md5sum for a message object of type 'ActiveStateSrv-request"
  "c83aa8233d546528849971b5100ae7d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActiveStateSrv-request>)))
  "Returns full string definition for message of type '<ActiveStateSrv-request>"
  (cl:format cl:nil "int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActiveStateSrv-request)))
  "Returns full string definition for message of type 'ActiveStateSrv-request"
  (cl:format cl:nil "int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActiveStateSrv-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActiveStateSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ActiveStateSrv-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude ActiveStateSrv-response.msg.html

(cl:defclass <ActiveStateSrv-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:integer
    :initform 0))
)

(cl:defclass ActiveStateSrv-response (<ActiveStateSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActiveStateSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActiveStateSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ctrl_pkg-srv:<ActiveStateSrv-response> is deprecated: use ctrl_pkg-srv:ActiveStateSrv-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <ActiveStateSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:error-val is deprecated.  Use ctrl_pkg-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActiveStateSrv-response>) ostream)
  "Serializes a message object of type '<ActiveStateSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActiveStateSrv-response>) istream)
  "Deserializes a message object of type '<ActiveStateSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActiveStateSrv-response>)))
  "Returns string type for a service object of type '<ActiveStateSrv-response>"
  "ctrl_pkg/ActiveStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActiveStateSrv-response)))
  "Returns string type for a service object of type 'ActiveStateSrv-response"
  "ctrl_pkg/ActiveStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActiveStateSrv-response>)))
  "Returns md5sum for a message object of type '<ActiveStateSrv-response>"
  "c83aa8233d546528849971b5100ae7d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActiveStateSrv-response)))
  "Returns md5sum for a message object of type 'ActiveStateSrv-response"
  "c83aa8233d546528849971b5100ae7d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActiveStateSrv-response>)))
  "Returns full string definition for message of type '<ActiveStateSrv-response>"
  (cl:format cl:nil "int32 error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActiveStateSrv-response)))
  "Returns full string definition for message of type 'ActiveStateSrv-response"
  (cl:format cl:nil "int32 error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActiveStateSrv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActiveStateSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ActiveStateSrv-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ActiveStateSrv)))
  'ActiveStateSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ActiveStateSrv)))
  'ActiveStateSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActiveStateSrv)))
  "Returns string type for a service object of type '<ActiveStateSrv>"
  "ctrl_pkg/ActiveStateSrv")