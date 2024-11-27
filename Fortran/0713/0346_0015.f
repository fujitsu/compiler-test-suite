       DIMENSION A(7000),B(7000),C(7000)
       DO  1  I = 1 , 7000
       B(I) = I
       C(I) = I
 1     CONTINUE
       ITNO = 1
       X = 0.
       S = 0.
       M = 0
       DO  10 I = 1 , 128 , 1
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 10    CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 11
       WRITE(6,1100) ITNO
       GO TO 12
 11    CONTINUE
       WRITE(6,1000) ITNO
 12    CONTINUE
       WRITE(6,2000) M , X , S
       ITNO = ITNO + 1
       X = 0.
       S = 0.
       M = 0
       DO  20 I = 3 , 384 , 3
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 20    CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 21
       WRITE(6,1100) ITNO
       GO TO 22
 21    CONTINUE
       WRITE(6,1000) ITNO
 22    CONTINUE
       WRITE(6,2000) M , X , S
       X = 0.
       S = 0.
       M = 0
       ITNO = ITNO + 1
       DO  30 I = 5 , 132 , 1
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 30    CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 31
       WRITE(6,1100) ITNO
       GO TO 32
 31    CONTINUE
       WRITE(6,1000) ITNO
 32    CONTINUE
       WRITE(6,2000) M , X , S
       ITNO = ITNO + 1
       X = 0.
       S = 0.
       M = 0
       DO  40 I = 5 , 386 , 3
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 40    CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 41
       WRITE(6,1100) ITNO
       GO TO 42
 41    CONTINUE
       WRITE(6,1000) ITNO
 42    CONTINUE
       WRITE(6,2000) M , X , S
       ITNO = ITNO + 1
       X = 0.
       S = 0.
       M = 0
       DO  50 I = 1 ,2048 , 1
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 50    CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 51
       WRITE(6,1100) ITNO
       GO TO 52
 51    CONTINUE
       WRITE(6,1000) ITNO
 52    CONTINUE
       WRITE(6,2000) M , X , S
       ITNO = ITNO + 1
       X = 0.
       S = 0.
       M = 0
       DO  60 I = 3 ,6144 , 3
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 60    CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 61
       WRITE(6,1100) ITNO
       GO TO 62
 61    CONTINUE
       WRITE(6,1000) ITNO
 62    CONTINUE
       WRITE(6,2000) M , X , S
       ITNO = ITNO + 1
       X = 0.
       S = 0.
       M = 0
       DO  70 I = 5 ,2052 , 1
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 70    CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 71
       WRITE(6,1100) ITNO
       GO TO 72
 71    CONTINUE
       WRITE(6,1000) ITNO
 72    CONTINUE
       WRITE(6,2000) M , X , S
       ITNO = ITNO + 1
       X = 0.
       S = 0.
       M = 0
       DO  80 I = 5 ,6146 , 3
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 80    CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 81
       WRITE(6,1100) ITNO
       GO TO 82
 81    CONTINUE
       WRITE(6,1000) ITNO
 82    CONTINUE
       WRITE(6,2000) M , X , S
       ITNO = ITNO + 1
       X = 0.
       S = 0.
       M = 0
       DO  90 I = 1 ,1500 , 1
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 90    CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 91
       WRITE(6,1100) ITNO
       GO TO 92
 91    CONTINUE
       WRITE(6,1000) ITNO
 92    CONTINUE
       WRITE(6,2000) M , X , S
       ITNO = ITNO + 1
       X = 0.
       S = 0.
       M = 0
       DO 100 I = 3 ,4500 , 3
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 100   CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 101
       WRITE(6,1100) ITNO
       GO TO 102
 101   CONTINUE
       WRITE(6,1000) ITNO
 102   CONTINUE
       WRITE(6,2000) M , X , S
       ITNO = ITNO + 1
       X = 0.
       S = 0.
       M = 0
       DO 110 I = 5 ,1504 , 1
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 110   CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 111
       WRITE(6,1100) ITNO
       GO TO 112
 111   CONTINUE
       WRITE(6,1000) ITNO
 112   CONTINUE
       WRITE(6,2000) M , X , S
       ITNO = ITNO + 1
       X = 0.
       S = 0.
       M = 0
       DO 120 I = 5 ,4502 , 3
          A(I) = B(I) + C(I)
          X    = X    + A(I)
          S    = S    +   I
          M    = M    +   I*2
 120   CONTINUE
       DEF1 = ABS( ( X-S*2 ) / X )
       DEF2 = ABS( ( X-M   ) / X )
       EPS  = 1.0E-6
       IF( DEF1 .LT. EPS .AND. DEF2 .LT. EPS ) GO TO 121
       WRITE(6,1100) ITNO
       GO TO 122
 121   CONTINUE
       WRITE(6,1000) ITNO
 122   CONTINUE
       WRITE(6,2000) M , X , S
       STOP
 1000  FORMAT(1X,'    TEST NO. = ',I3,'              ******( OK )*****')
 1100  FORMAT(1X,'    TEST NO. = ',I3,'              ******( NG )*****')
 2000  FORMAT(1X,'M = ',I10,5X,'X = ' ,E20.10,5X,'S = ',E20.10)
       END
