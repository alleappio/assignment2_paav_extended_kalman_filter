;; Auto-generated. Do not edit!


(when (boundp 'ekf::RadarMsg)
  (if (not (find-package "EKF"))
    (make-package "EKF"))
  (shadow 'RadarMsg (find-package "EKF")))
(unless (find-package "EKF::RADARMSG")
  (make-package "EKF::RADARMSG"))

(in-package "ROS")
;;//! \htmlinclude RadarMsg.msg.html


(defclass ekf::RadarMsg
  :super ros::object
  :slots (_id _timestamp _rho _theta _rho_dot ))

(defmethod ekf::RadarMsg
  (:init
   (&key
    ((:id __id) 0)
    ((:timestamp __timestamp) 0)
    ((:rho __rho) 0.0)
    ((:theta __theta) 0.0)
    ((:rho_dot __rho_dot) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _timestamp (round __timestamp))
   (setq _rho (float __rho))
   (setq _theta (float __theta))
   (setq _rho_dot (float __rho_dot))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:rho
   (&optional __rho)
   (if __rho (setq _rho __rho)) _rho)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:rho_dot
   (&optional __rho_dot)
   (if __rho_dot (setq _rho_dot __rho_dot)) _rho_dot)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _timestamp
    4
    ;; float32 _rho
    4
    ;; float32 _theta
    4
    ;; float32 _rho_dot
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _timestamp
       (write-long _timestamp s)
     ;; float32 _rho
       (sys::poke _rho (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rho_dot
       (sys::poke _rho_dot (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _timestamp
     (setq _timestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _rho
     (setq _rho (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rho_dot
     (setq _rho_dot (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ekf::RadarMsg :md5sum-) "e7eb33843a766aff55213f894eae217e")
(setf (get ekf::RadarMsg :datatype-) "ekf/RadarMsg")
(setf (get ekf::RadarMsg :definition-)
      "int32 id
int32 timestamp
float32 rho
float32 theta
float32 rho_dot

")



(provide :ekf/RadarMsg "e7eb33843a766aff55213f894eae217e")


