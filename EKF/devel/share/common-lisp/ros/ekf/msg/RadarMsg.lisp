; Auto-generated. Do not edit!


(cl:in-package ekf-msg)


;//! \htmlinclude RadarMsg.msg.html

(cl:defclass <RadarMsg> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0)
   (rho
    :reader rho
    :initarg :rho
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (rho_dot
    :reader rho_dot
    :initarg :rho_dot
    :type cl:float
    :initform 0.0))
)

(cl:defclass RadarMsg (<RadarMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ekf-msg:<RadarMsg> is deprecated: use ekf-msg:RadarMsg instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RadarMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ekf-msg:id-val is deprecated.  Use ekf-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <RadarMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ekf-msg:timestamp-val is deprecated.  Use ekf-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'rho-val :lambda-list '(m))
(cl:defmethod rho-val ((m <RadarMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ekf-msg:rho-val is deprecated.  Use ekf-msg:rho instead.")
  (rho m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <RadarMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ekf-msg:theta-val is deprecated.  Use ekf-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'rho_dot-val :lambda-list '(m))
(cl:defmethod rho_dot-val ((m <RadarMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ekf-msg:rho_dot-val is deprecated.  Use ekf-msg:rho_dot instead.")
  (rho_dot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarMsg>) ostream)
  "Serializes a message object of type '<RadarMsg>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'timestamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rho))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rho_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarMsg>) istream)
  "Deserializes a message object of type '<RadarMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rho) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rho_dot) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarMsg>)))
  "Returns string type for a message object of type '<RadarMsg>"
  "ekf/RadarMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarMsg)))
  "Returns string type for a message object of type 'RadarMsg"
  "ekf/RadarMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarMsg>)))
  "Returns md5sum for a message object of type '<RadarMsg>"
  "e7eb33843a766aff55213f894eae217e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarMsg)))
  "Returns md5sum for a message object of type 'RadarMsg"
  "e7eb33843a766aff55213f894eae217e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarMsg>)))
  "Returns full string definition for message of type '<RadarMsg>"
  (cl:format cl:nil "int32 id~%int32 timestamp~%float32 rho~%float32 theta~%float32 rho_dot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarMsg)))
  "Returns full string definition for message of type 'RadarMsg"
  (cl:format cl:nil "int32 id~%int32 timestamp~%float32 rho~%float32 theta~%float32 rho_dot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarMsg>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarMsg
    (cl:cons ':id (id msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':rho (rho msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':rho_dot (rho_dot msg))
))
