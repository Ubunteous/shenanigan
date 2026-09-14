(in-package :cl-user) ; alias: COMMON-LISP-USER

;; TODO: use this var to hold current system/server
;; and use if/when to update it or prevent reevaluating server
;; (setf system nil)

(defun start-server! ()
  (print "Starting server")
  (system:start-server))

(defun stop-server! ()
  (print "Stopping server")
  (system:stop-server))

(defun restart-server! ()
  (print "Restarting server")
  (stop-server!)
  (start-server!))
