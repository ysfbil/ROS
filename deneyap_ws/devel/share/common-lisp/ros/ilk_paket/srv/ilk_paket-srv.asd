
(cl:in-package :asdf)

(defsystem "ilk_paket-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "servis_ornegi" :depends-on ("_package_servis_ornegi"))
    (:file "_package_servis_ornegi" :depends-on ("_package"))
  ))