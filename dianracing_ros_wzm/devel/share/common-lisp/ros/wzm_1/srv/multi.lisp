; Auto-generated. Do not edit!


(cl:in-package wzm_1-srv)


;//! \htmlinclude multi-request.msg.html

(cl:defclass <multi-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass multi-request (<multi-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <multi-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'multi-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wzm_1-srv:<multi-request> is deprecated: use wzm_1-srv:multi-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <multi-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wzm_1-srv:a-val is deprecated.  Use wzm_1-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <multi-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wzm_1-srv:b-val is deprecated.  Use wzm_1-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <multi-request>) ostream)
  "Serializes a message object of type '<multi-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <multi-request>) istream)
  "Deserializes a message object of type '<multi-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<multi-request>)))
  "Returns string type for a service object of type '<multi-request>"
  "wzm_1/multiRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multi-request)))
  "Returns string type for a service object of type 'multi-request"
  "wzm_1/multiRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<multi-request>)))
  "Returns md5sum for a message object of type '<multi-request>"
  "94ad1411057ad93d39d73409d0884011")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'multi-request)))
  "Returns md5sum for a message object of type 'multi-request"
  "94ad1411057ad93d39d73409d0884011")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<multi-request>)))
  "Returns full string definition for message of type '<multi-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'multi-request)))
  "Returns full string definition for message of type 'multi-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <multi-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <multi-request>))
  "Converts a ROS message object to a list"
  (cl:list 'multi-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude multi-response.msg.html

(cl:defclass <multi-response> (roslisp-msg-protocol:ros-message)
  ((m
    :reader m
    :initarg :m
    :type cl:integer
    :initform 0))
)

(cl:defclass multi-response (<multi-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <multi-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'multi-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wzm_1-srv:<multi-response> is deprecated: use wzm_1-srv:multi-response instead.")))

(cl:ensure-generic-function 'm-val :lambda-list '(m))
(cl:defmethod m-val ((m <multi-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wzm_1-srv:m-val is deprecated.  Use wzm_1-srv:m instead.")
  (m m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <multi-response>) ostream)
  "Serializes a message object of type '<multi-response>"
  (cl:let* ((signed (cl:slot-value msg 'm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <multi-response>) istream)
  "Deserializes a message object of type '<multi-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'm) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<multi-response>)))
  "Returns string type for a service object of type '<multi-response>"
  "wzm_1/multiResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multi-response)))
  "Returns string type for a service object of type 'multi-response"
  "wzm_1/multiResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<multi-response>)))
  "Returns md5sum for a message object of type '<multi-response>"
  "94ad1411057ad93d39d73409d0884011")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'multi-response)))
  "Returns md5sum for a message object of type 'multi-response"
  "94ad1411057ad93d39d73409d0884011")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<multi-response>)))
  "Returns full string definition for message of type '<multi-response>"
  (cl:format cl:nil "int64 m~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'multi-response)))
  "Returns full string definition for message of type 'multi-response"
  (cl:format cl:nil "int64 m~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <multi-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <multi-response>))
  "Converts a ROS message object to a list"
  (cl:list 'multi-response
    (cl:cons ':m (m msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'multi)))
  'multi-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'multi)))
  'multi-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multi)))
  "Returns string type for a service object of type '<multi>"
  "wzm_1/multi")