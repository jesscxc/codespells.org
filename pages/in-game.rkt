#lang at-exp racket

(provide in-game.html)

(require "index.rkt"
         "../lang.rkt"
         "blog/posts.rkt"
         "blog/lang.rkt"
         (prefix-in html: website)
         )

(define (in-game.html)
  (page in-game.html
        (normal-content
          #:head (list (title "Welcome to CodeSpells!")
                       (meta name: "description" content: "CodeSpells video games are a work-in-progress, so thank you for helping us test! Join our open-source community!")
                       ) 
          (div
            style: (properties
                     position: 'fixed
                     background-image: (~a "url("path:images/EarthBall.png")")
                     background-size:  "cover"
                     background-position:  "center"
                     background-repeat:  "no-repeat"
                     background-attachment:  "fixed"
                     height: "100vh"
                     width: "100vw"
                     z-index: "-1"
                     ))
          (container
            (div style: (properties position: "relative"
                                    margin-left: "auto"
                                    margin-right: "auto"
                                    width: 300
                                    )
                 (logo 300))
            (row
              (div class: "col"
                   (homepage-card #:title "Welcome to CodeSpells!"
                                  (p "After you close this welcome page, you can press C at any time to open your spellcrafting editor.")
                                  (p "Also, we could use your help. Click the button above to support us on Patreon (patreon.com/codespells)."
                                     )
                                  )
                   (trailer-video)
                   )
              (div class: "col"
                   (recent-blog-posts)
                   (about-the-authors)
                   ))))
        ))

(module+ main
         (render #:to "out"
                 (in-game.html)))
