(require "asdf")

(let* ((cwd (uiop:getcwd))
	   (parent (uiop:pathname-parent-directory-pathname cwd)))
  (asdf:load-asd (merge-pathnames "cl-server.asd" parent)))

(asdf:load-system :cl-server)

;; (start-server!) ; cl-user
