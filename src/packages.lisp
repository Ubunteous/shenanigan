(in-package :cl-user)

(defpackage :core
  (:use :cl)
  (:export #:main))

;; (defpackage :system
;;   (:use :cl
;;    :hunchentoot
;;    ;; :easy-routes ; conflict with hunchentoot
;;    )
;;   (:export
;;    #:start-server
;;    #:stop-server))

(uiop:define-package :system
	;; (:import-from :hunchentoot
	;; 			  #:easy-acceptor
	;; 			  #:start
	;; 			  #:stop)
	(:use :cl
		  ;; :hunchentoot
		  ;; :easy-routes ; conflict with hunchentoot
		  )
  (:export
   #:start-server
   #:stop-server))
