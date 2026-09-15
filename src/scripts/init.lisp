(require "asdf")

;; try to find shenanigan.asd file with in every parent directory to load it.
(let* ((current-path (uiop:getcwd))
	   (root (uiop/pathname:pathname-root current-path))
	   (get-shenanigan-asd (lambda (path) (merge-pathnames "shenanigan.asd" path))))
  (loop while (not (eq current-path root)) do
	(when (uiop:file-exists-p (funcall get-shenanigan-asd current-path))
	  (format t "Loading .asd system file in directory ~a" current-path)
	  (asdf:load-asd (funcall get-shenanigan-asd current-path))
	  (loop-finish))
	(setf current-path (uiop:pathname-parent-directory-pathname current-path)))
  :finally (unless (uiop:file-exists-p (funcall get-shenanigan-asd current-path))
			 (print "Could not find .asd file")))

;; (start-server!) ; cl-user
