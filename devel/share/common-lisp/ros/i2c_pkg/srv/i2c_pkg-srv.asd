
(cl:in-package :asdf)

(defsystem "i2c_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BatteryLevelSrv" :depends-on ("_package_BatteryLevelSrv"))
    (:file "_package_BatteryLevelSrv" :depends-on ("_package"))
  ))