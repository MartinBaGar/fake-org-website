(require 'ox-publish)

(setq org-publish-project-alist
      '(("pages"
         :base-directory "./org/"
         :base-extension "org"
         :publishing-directory "./docs/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :with-toc t
         :section-numbers nil
         ;; Inject Simple.css to make the raw HTML look great instantly
         :html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\" />")
         
        ("static"
         :base-directory "./org/"
         :base-extension "png\\|jpg\\|gif\\|svg"
         :publishing-directory "./docs/"
         :recursive t
         :publishing-function org-publish-attachment)
         
        ("fake-site" :components ("pages" "static"))))
