(
 (readline-input-history
  (
   #",quit"
   #".quit"
   #"quit()"
   #"(exit)"
   #"(define (select-competitors match-ups-count\n                               subject-list\n                               subject-list-size\n                               (prng random))\n     (if (> (arithmetic-shift match-ups-count 1)\n            subject-list-size)\n       (error 'select-competitors \"more match ups than the subject size allows\")\n       (let select-competitors-rec\n         ((chosen-list-left empty)\n          (chosen-list-right empty)\n          (num-left-left match-ups-count)\n          (num-left-right match-ups-count)\n          (source-list subject-list)\n          (source-list-size subject-list-size)\n          (residue-list empty))\n         (if (or\n               (and\n                 (= num-left-left 0)\n                 (= num-left-right 0))\n               (empty? source-list))\n           (values chosen-list-left\n                   chosen-list-right\n                   (append residue-list source-list))\n           (let ((dice (prng)))\n             (cond ((< dice (/ num-left-left source-list-size))\n                    (select-competitors-rec\n                      (cons (first source-list) chosen-list-left)\n                      chosen-list-right\n                      (sub1 num-left-left)\n                      num-left-right\n                      (rest source-list)\n                      (sub1 source-list-size)\n                      residue-list)\n                   ((< dice (/ (+ num-left-left num-left-right)\n                               source-list-size))\n                    (select-competitors-rec\n                      chosen-list-left\n                      (cons (first source-list) chosen-list-right)\n                      num-left-left\n                      (sub1 num-left-right)\n                      (rest source-list)\n                      (sub1 source-list-size)\n                      residue-list)\n                   (else\n                     (select-competitors-rec\n                       chosen-list-left\n                       chosen-list-right\n                       num-left-left\n                       num-left-right\n                       (rest source-list)\n                       (sub1 source-list-size)\n                       (first source-list)))))))))\n   )\n   (define (select-competitors match-ups-count\n                               subject-list\n                               subject-list-size\n                               (prng random))\n     (if (> (arithmetic-shift match-ups-count 1)\n            subject-list-size)\n       (error 'select-competitors \"more match ups than the subject size allows\")\n       (let select-competitors-rec\n         ((chosen-list-left empty)\n          (chosen-list-right empty)\n          (num-left-left match-ups-count)\n          (num-left-right match-ups-count)\n          (source-list subject-list)\n          (source-list-size subject-list-size)\n          (residue-list empty))\n         (if (or\n               (and\n                 (= num-left-left 0)\n                 (= num-left-right 0))\n               (empty? source-list))\n           (values chosen-list-left\n                   chosen-list-right\n                   (append residue-list source-list))\n           (let ((dice (prng)))\n             (cond ((< dice (/ num-left-left source-list-size))\n                    (select-competitors-rec\n                      (cons (first source-list) chosen-list-left)\n                      chosen-list-right\n                      (sub1 num-left-left)\n                      num-left-right\n                      (rest source-list)\n                      (sub1 source-list-size)\n                      residue-list))\n                   ((< dice (/ (+ num-left-left num-left-right)\n                               source-list-size))\n                    (select-competitors-rec\n                      chosen-list-left\n                      (cons (first source-list) chosen-list-right)\n                      num-left-left\n                      (sub1 num-left-right)\n                      (rest source-list)\n                      (sub1 source-list-size)\n                      residue-list))\n                   (else\n                     (select-competitors-rec\n                       chosen-list-left\n                       chosen-list-right\n                       num-left-left\n                       num-left-right\n                       (rest source-list)\n                       (sub1 source-list-size)\n                       (first source-list)))))))))"
   #"(define (select-competitors match-ups-count\n                               subject-list\n                               subject-list-size\n                               (prng random))\n     (if (> (arithmetic-shift match-ups-count 1)\n            subject-list-size)\n       (error 'select-competitors \"more match ups than the subject size allows\")\n       (let select-competitors-rec\n         ((chosen-list-left empty)\n          (chosen-list-right empty)\n          (num-left-left match-ups-count)\n          (num-left-right match-ups-count)\n          (source-list subject-list)\n          (source-list-size subject-list-size)\n          (residue-list empty))\n         (if (or\n               (and\n                 (= num-left-left 0)\n                 (= num-left-right 0))\n               (empty? source-list))\n           (values chosen-list-left\n                   chosen-list-right\n                   (append residue-list source-list))\n           (let ((dice (prng)))\n             (cond ((< dice (/ num-left-left source-list-size))\n                    (select-competitors-rec\n                      (cons (first source-list) chosen-list-left)\n                      chosen-list-right\n                      (sub1 num-left-left)\n                      num-left-right\n                      (rest source-list)\n                      (sub1 source-list-size)\n                      residue-list))\n                   ((< dice (/ (+ num-left-left num-left-right)\n                               source-list-size))\n                    (select-competitors-rec\n                      chosen-list-left\n                      (cons (first source-list) chosen-list-right)\n                      num-left-left\n                      (sub1 num-left-right)\n                      (rest source-list)\n                      (sub1 source-list-size)\n                      residue-list))\n                   (else\n                     (select-competitors-rec\n                       chosen-list-left\n                       chosen-list-right\n                       num-left-left\n                       num-left-right\n                       (rest source-list)\n                       (sub1 source-list-size)\n                       (first source-list)))))))))"
   #"(quit\n   )"
   #"(clear)"
  ))
)