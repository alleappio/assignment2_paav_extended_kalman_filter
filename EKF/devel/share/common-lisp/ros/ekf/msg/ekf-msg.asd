
(cl:in-package :asdf)

(defsystem "ekf-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RadarMsg" :depends-on ("_package_RadarMsg"))
    (:file "_package_RadarMsg" :depends-on ("_package"))
  ))