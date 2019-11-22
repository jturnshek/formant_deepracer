
(cl:in-package :asdf)

(defsystem "ctrl_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ServoCtrlMsg" :depends-on ("_package_ServoCtrlMsg"))
    (:file "_package_ServoCtrlMsg" :depends-on ("_package"))
  ))