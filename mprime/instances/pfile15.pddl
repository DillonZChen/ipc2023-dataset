(define (problem mprime-x-21)
   (:domain mystery-prime-typed)
   (:objects apple muffin lemon flounder wurst okra snickers onion
             marzipan popover hamburger guava - food
             triumph satisfaction learning love expectation rest
             - pleasure
             laceration boils anxiety dread abrasion jealousy prostatitis
             grief hangover depression angina anger grief-2 sciatica
             loneliness depression-8 hangover-3 anger-4 angina-1
             prostatitis-7 abrasion-6 loneliness-15 sciatica-16 laceration-5
             laceration-10 jealousy-11 boils-12 anxiety-13 dread-14 boils-30
             grief-31 loneliness-32 hangover-9 abrasion-29 - pain
)
   (:init
(= (locale apple) 0)
          (eats wurst lemon)
          (craves prostatitis-7 snickers)
(= (harmony love) 2)
          (craves sciatica wurst)
          (eats snickers wurst)
          (eats wurst snickers)
          (eats popover hamburger)
          (craves hangover lemon)
          (eats popover snickers)
          (eats guava marzipan)
          (craves anger flounder)
          (eats okra hamburger)
          (craves hangover-3 okra)
(= (harmony expectation) 2)
          (eats apple snickers)
          (craves angina flounder)
          (craves anger-4 okra)
          (eats wurst muffin)
          (eats lemon muffin)
          (craves boils-12 popover)
          (eats flounder wurst)
(= (harmony rest) 1)
          (craves laceration-10 popover)

          (eats onion guava)
          (eats apple flounder)
(= (locale snickers) 2)
(= (harmony learning) 3)
          (craves boils apple)
          (craves angina-1 okra)
(= (locale muffin) 0)
          (craves jealousy muffin)
          (craves loneliness-32 hamburger)
          (craves expectation okra)
          (craves triumph apple)
          (eats okra onion)
          (craves rest guava)
          (craves depression-8 okra)
          (craves prostatitis muffin)
          (eats wurst flounder)
(= (locale marzipan) 1)
          (craves anxiety-13 popover)
          (craves depression lemon)
          (craves satisfaction muffin)
          (craves laceration apple)
          (eats hamburger popover)
          (craves dread-14 popover)
          (eats lemon wurst)
(= (harmony triumph) 2)

(= (locale hamburger) 1)
          (eats apple lemon)
          (eats flounder apple)
          (craves laceration-5 marzipan)
(= (locale onion) 0)
          (craves abrasion muffin)
          (craves loneliness wurst)
          (craves loneliness-15 marzipan)
          (eats muffin wurst)
          (eats onion okra)
          (craves grief-31 hamburger)
          (eats marzipan guava)
          (eats snickers apple)
          (craves love flounder)
          (craves abrasion-6 onion)
          (craves jealousy-11 popover)
(= (locale popover) 2)
          (eats snickers marzipan)
(= (harmony satisfaction) 3)
          (craves learning lemon)
          (craves grief muffin)


(= (locale wurst) 0)
          (eats hamburger okra)
          (eats lemon apple)
          (eats marzipan snickers)
(= (locale guava) 1)
          (craves boils-30 hamburger)
          (eats snickers popover)
(= (locale okra) 2)
          (eats muffin lemon)
(= (locale flounder) 1)
          (craves dread muffin)
(= (locale lemon) 1)
          (eats guava onion)
          (craves anxiety apple)
          (craves hangover-9 hamburger)
          (craves sciatica-16 marzipan)
          (craves grief-2 wurst)

          (craves abrasion-29 guava))
   (:goal (and (craves sciatica apple))))
