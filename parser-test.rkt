#lang br
(require apcsp-pseudocode/parser
         apcsp-pseudocode/tokenizer
         brag/support
         rackunit)

(define (test-parse str)
  (parse-to-datum (apply-tokenizer-maker make-tokenizer str)))

(check-equal?
 (test-parse "a <- \"a string\"")
 '(ps-program (ps-assignment a "a string")))

(check-equal?
 (test-parse "b <- true")
 '(ps-program (ps-assignment b (ps-boolean "true"))))

(check-equal?
 (test-parse "c <- 32")
 '(ps-program (ps-assignment c 32)))

(check-equal?
 (test-parse "c <- 3.14159")
 '(ps-program (ps-assignment c 3.14159)))

(check-equal?
 (test-parse "c <- d")
 '(ps-program (ps-assignment c d)))

(check-equal?
 (test-parse "x <- NOT false")
 '(ps-program (ps-assignment x (ps-not (ps-boolean "false")))))

(check-equal?
 (test-parse "c <- -d")
 '(ps-program (ps-assignment c (ps-neg d))))

(check-equal?
 (test-parse "prod <- 3*sum")
 '(ps-program (ps-assignment prod (ps-mul 3 sum))))


(check-equal?
 (test-parse "sum <- 2 + a")
 '(ps-program (ps-assignment sum (ps-add 2 a))))

(check-equal?
 (test-parse "opsOrder <- 2+3*(5-c)")
 '(ps-program (ps-assignment opsOrder (ps-add 2 (ps-mul 3 (ps-sub 5 c))))))

(check-equal?
 (test-parse "bool <- 2+3 < 2*3")
 '(ps-program (ps-assignment bool (ps-lt (ps-add 2 3) (ps-mul 2 3)))))

(check-equal?
 (test-parse "DISPLAY(\"anything\")")
 '(ps-program (ps-display "anything")))

(check-equal?
 (test-parse "num <- INPUT()")
 '(ps-program (ps-assignment num (ps-input))))