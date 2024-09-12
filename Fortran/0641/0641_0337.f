      PROGRAM MAIN

       REAL*4 TW1(100), TW2(100), TW3(100)
       DATA TW1/100*1/ 
       DATA TW2/100*1/ 
       DATA TW3/100*1/ 
       INTEGER J
       INTEGER N
       PARAMETER (N = 80)

       WRITE (6, 100) TW1, TW2, TW3
  100  FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,1H ,
     X   '--- TW2 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,1H ,'--- TW3 ---',/
     X   ,1H ,(3X,20(5(F17.6,2X)/)))
      END
