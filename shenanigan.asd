(asdf:defsystem "shenanigan"
  :version nil
  :author nil
  :license nil
  :depends-on ("hunchentoot"
			   "easy-routes")
  :components ((:module "src"
                :components
                (
				 (:file "packages")
				 ;;
				 (:file "system")
				 ;;
				 (:file "main")))
			   (:module "user"
                :components
                ((:file "cl-user"))))
  :description nil)
