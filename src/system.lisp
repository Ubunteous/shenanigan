(in-package :system)

(defvar *server* nil "Server instance (Hunchentoot acceptor).")

(defvar *frontend*
  (merge-pathnames (asdf:system-source-directory :shenanigan) "www/")
  "HTML and CSS directory.")

(defparameter *port* 9999 "The application port.")

(defun start-server (&key (port *port*))
  (format t "~&Starting the web server on port ~a~&" port)
  (force-output)
  (setf *server*
		(make-instance
		 'hunchentoot:easy-acceptor
		 :port port
		 :document-root *frontend*)) ; default: www/
  (hunchentoot:start *server*))

(defun stop-server ()
  ;; use * instead of *server* to stop every instance
  (when (and *server*
			 (hunchentoot:started-p *server*))
	(hunchentoot:stop *server*)))
