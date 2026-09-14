(in-package :system)

(defvar *server* nil "Server instance (Hunchentoot acceptor).")
(defvar *frontend-path* #p"~/Documents/org/cl-server/www/" "HTML and CSS directory.")
(defparameter *port* 9999 "The application port.")

(defun start-server (&key (port *port*))
  (format t "~&Starting the web server on port ~a~&" port)
  (force-output)
  (setf *server*
		;; (make-instance 'easy-routes:easy-routes-acceptor :port port))
		(make-instance 'hunchentoot:easy-acceptor
					   :port port
					   :document-root *frontend-path*)) ; defaults to www/
  (hunchentoot:start *server*))

(defun stop-server ()
  (hunchentoot:stop *server*))
