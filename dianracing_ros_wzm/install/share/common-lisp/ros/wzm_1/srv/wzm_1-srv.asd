
(cl:in-package :asdf)

(defsystem "wzm_1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "multi" :depends-on ("_package_multi"))
    (:file "_package_multi" :depends-on ("_package"))
  ))