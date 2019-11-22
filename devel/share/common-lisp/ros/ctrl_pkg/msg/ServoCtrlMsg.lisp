; Auto-generated. Do not edit!


(cl:in-package ctrl_pkg-msg)


;//! \htmlinclude ServoCtrlMsg.msg.html

(cl:defclass <ServoCtrlMsg> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0))
)

(cl:defclass ServoCtrlMsg (<ServoCtrlMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoCtrlMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoCtrlMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ctrl_pkg-msg:<ServoCtrlMsg> is deprecated: use ctrl_pkg-msg:ServoCtrlMsg instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <ServoCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-msg:angle-val is deprecated.  Use ctrl_pkg-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <ServoCtrlMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ctrl_pkg-msg:throttle-val is deprecated.  Use ctrl_pkg-msg:throttle instead.")
  (throttle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoCtrlMsg>) ostream)
  "Serializes a message object of type '<ServoCtrlMsg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoCtrlMsg>) istream)
  "Deserializes a message object of type '<ServoCtrlMsg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoCtrlMsg>)))
  "Returns string type for a message object of type '<ServoCtrlMsg>"
  "ctrl_pkg/ServoCtrlMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoCtrlMsg)))
  "Returns string type for a message object of type 'ServoCtrlMsg"
  "ctrl_pkg/ServoCtrlMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoCtrlMsg>)))
  "Returns md5sum for a message object of type '<ServoCtrlMsg>"
  "5c94514727f23b094945c5660fa4835a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoCtrlMsg)))
  "Returns md5sum for a message object of type 'ServoCtrlMsg"
  "5c94514727f23b094945c5660fa4835a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoCtrlMsg>)))
  "Returns full string definition for message of type '<ServoCtrlMsg>"
  (cl:format cl:nil "float32 angle~%float32 throttle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoCtrlMsg)))
  "Returns full string definition for message of type 'ServoCtrlMsg"
  (cl:format cl:nil "float32 angle~%float32 throttle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoCtrlMsg>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoCtrlMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoCtrlMsg
    (cl:cons ':angle (angle msg))
    (cl:cons ':throttle (throttle msg))
))
