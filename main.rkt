#lang slideshow

;Provide all your quests from main.
(provide quests)

(require pict/code)
(require ts-curric-common)

(require racket/runtime-path)
(define-runtime-path images "images")

(define (local-bitmap s)
  (bitmap (~a (path->string images) "/" s)))

(define demo
  (with-award 1
    (activity-instructions "Demo Slide"
                         '()
                         (list
                          (instruction-open "Coffee Mug")
                          (instruction-basic "Drink"))
                         (video-qr "http://bit.ly/2CoFWPL"))))


(define (quest1)
  (make-picts "red" "Q1-" demo (settings (bg (colorize (rectangle 70 50) "green"))
                                         (scale (local-bitmap "coffee.png") 0.1)
                                         (scale (local-bitmap "coffee.png") 0.1)
                                         (scale (local-bitmap "coffee.png") 0.1))))



(define (quests)
  (list (quest1)
        ;More quests here
        ))
