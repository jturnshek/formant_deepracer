; Auto-generated. Do not edit!


(cl:in-package ctrl_pkg-srv)


;//! \htmlinclude EnableStateSrv-request.msg.html

(cl:defclass <EnableStateSrv-request> (roslisp-msg-protocol:ros-message)
  ((isActive
    :reader isActive
    :initarg :isActive
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EnableStateSrv-request (<EnableStateSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableStateSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableStateSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ctrl_pkg-srv:<EnableStateSrv-request> is deprecated: use ctrl_pkg-srv:EnableStateSrv-request instead.")))

(cl:ensure-generic-function 'isActive-val :lambda-list '(m))
(cl:defmethod isActive-val ((m <EnableStateSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:isActive-val is deprecated.  Use ctrl_pkg-srv:isActive instead.")
  (isActive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableStateSrv-request>) ostream)
  "Serializes a message object of type '<EnableStateSrv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isActive) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableStateSrv-request>) istream)
  "Deserializes a message object of type '<EnableStateSrv-request>"
    (cl:setf (cl:slot-value msg 'isActive) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableStateSrv-request>)))
  "Returns string type for a service object of type '<EnableStateSrv-request>"
  "ctrl_pkg/EnableStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableStateSrv-request)))
  "Returns string type for a service object of type 'EnableStateSrv-request"
  "ctrl_pkg/EnableStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableStateSrv-request>)))
  "Returns md5sum for a message object of type '<EnableStateSrv-request>"
  "232cd2b9458497f0f728a51b5639d139")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableStateSrv-request)))
  "Returns md5sum for a message object of type 'EnableStateSrv-request"
  "232cd2b9458497f0f728a51b5639d139")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableStateSrv-request>)))
  "Returns full string definition for message of type '<EnableStateSrv-request>"
  (cl:format cl:nil "bool isActive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableStateSrv-request)))
  "Returns full string definition for message of type 'EnableStateSrv-request"
  (cl:format cl:nil "bool isActive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableStateSrv-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableStateSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableStateSrv-request
    (cl:cons ':isActive (isActive msg))
))
;//! \htmlinclude EnableStateSrv-response.msg.html

(cl:defclass <EnableStateSrv-response> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type cl:integer
    :initform 0))
)

(cl:defclass EnableStateSrv-response (<EnableStateSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableStateSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableStateSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ctrl_pkg-srv:<EnableStateSrv-response> is deprecated: use ctrl_pkg-srv:EnableStateSrv-response instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <EnableStateSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-srv:error-val is deprecated.  Use ctrl_pkg-srv:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableStateSrv-response>) ostream)
  "Serializes a message object of type '<EnableStateSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableStateSrv-response>) istream)
  "Deserializes a message object of type '<EnableStateSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableStateSrv-response>)))
  "Returns string type for a service object of type '<EnableStateSrv-response>"
  "ctrl_pkg/EnableStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableStateSrv-response)))
  "Returns string type for a service object of type 'EnableStateSrv-response"
  "ctrl_pkg/EnableStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableStateSrv-response>)))
  "Returns md5sum for a message object of type '<EnableStateSrv-response>"
  "232cd2b9458497f0f728a51b5639d139")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableStateSrv-response)))
  "Returns md5sum for a message object of type 'EnableStateSrv-response"
  "232cd2b9458497f0f728a51b5639d139")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableStateSrv-response>)))
  "Returns full string definition for message of type '<EnableStateSrv-response>"
  (cl:format cl:nil "int32 error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableStateSrv-response)))
  "Returns full string definition for message of type 'EnableStateSrv-response"
  (cl:format cl:nil "int32 error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableStateSrv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableStateSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableStateSrv-response
    (cl:cons ':error (error msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EnableStateSrv)))
  'EnableStateSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EnableStateSrv)))
  'EnableStateSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableStateSrv)))
  "Returns string type for a service object of type '<EnableStateSrv>"
  "ctrl_pkg/EnableStateSrv")