#lang at-exp racket

(require (except-in "../../lang.rkt" small))
(require (except-in "./lang.rkt" small))

(require 
  website-js/components/accordion-cards
 ; (except-in website-js small)
  (prefix-in html:
	     (only-in website
		      script))
  (prefix-in h:
	     2htdp/image)

  "../../legacy/in-game-lang.rkt"
  )

(define (spell-card . content)
  (card
   (card-header (first content))
   (card-body
    (card-text (rest content)))))

(define-post 
  2020-09-02
  "New Spells + New Videos"
  @div{Some videos of in-game spellcrafting}
  @div{

  @p{As a "solution" (or, rather a hint) for the puzzles I posted yesterday, this post contains four videos.
 Each Rune from yesterday's puzzle spells is used in one of these videos.  By seeing the Runes used in context, you should
 be able to deduce what they are doing in the context of yesterday's spell puzzles.}

 @(card
   (card-body
    @p{Here's one in which I use the following:}

    @ul{
     @li{@(typeset-rune-inline (codespells-basic-lang) teleport)}
     @li{@(typeset-rune-inline (codespells-basic-lang) dig)}
     @li{And the various variations of @(typeset-rune-inline (codespells-basic-lang) large)}
    }
   
    @(video:digging-a-cave-and-teleporting-around.mp4 #:autoplay #f)))


 @(card
   (card-body
    @p{Here's one in which I use the following:}

    @ul{
     @li{@(typeset-rune-inline (codespells-basic-lang) build)}
     @li{And the various variations of @(typeset-rune-inline (codespells-basic-lang) up)}
    }
  
    @(video:building-statues.mp4 #:autoplay #f)))

 @(card
   (card-body
    @p{Here's one where I use the following:}

    @ul{
     @li{@(typeset-rune-inline (codespells-basic-lang) teleport)}
     @li{@(typeset-rune-inline (codespells-basic-lang) build)}
     @li{And @(typeset-rune-inline (codespells-basic-lang) up)}
    }
  
    @(video:teleport-build.mp4 #:autoplay #f)))

 @(card
   (card-body
    @p{And in this last one, I use:}

    @ul{
     @li{@(typeset-rune-inline (codespells-basic-lang) warp)}
     @li{@(typeset-rune-inline (codespells-basic-lang) dig)}
    }
  
    @(video:purple-glass-world.mp4 #:autoplay #f)))

  @p{- Stephen R. Foster}
  @(logo 200)
  })



