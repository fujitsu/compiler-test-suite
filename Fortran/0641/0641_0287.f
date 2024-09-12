      PROGRAM MAIN
       DIMENSION A(10), B(10), C(10)
       REAL*8 Q(10)
       LOGICAL*4 LA(10)
       LOGICAL*1 LB(10)
       REAL RR1, RR2
       PARAMETER (RR1 = 1. / 2., RR2 = 1. / 2.)
       DATA LA/6*.TRUE.,4*.FALSE./ 
       DATA LB/6*.TRUE.,4*.FALSE./ 
       DATA A/0,1,2,2,1,0,4*0/ 
       DATA B/10*0./ 
       DATA C/1,2,3,4,5,6,7,8,9,10/ 
       DATA Q/0,1,2,2,1,0,4*0/ 
       LOGICAL LL4, LL3, LL2, LL1

       DO I=1,10
        IF (LA(I)) THEN
         IF (A(I) - 1.) 16, 14, 15
        END IF
   14   B(I) = C(I)
        GO TO 16
   15   B(I) = C(I) * RR1
   16   CONTINUE
       END DO
       WRITE (6, *) B

       DO I=1,10
        IF (LA(I)) THEN
         IF (A(I) - 1.) 19, 17, 18
        END IF
   17   B(I) = C(I)
        GO TO 19
   18   B(I) = C(I) * RR2
   19   CONTINUE
       END DO
       WRITE (6, *) B



       DO I=1,10
        IF (LA(I)) THEN
         IF (A(I) - 1.) 23, 21, 22
        END IF
   21   B(I) = C(I)
        GO TO 23
   22   B(I) = C(I) * 2.
   23   CONTINUE
       END DO
       WRITE (6, *) B



       DO I=1,10
        IF (LA(I)) THEN
         IF (A(I) - 1.) 26, 24, 25
        END IF
   24   B(I) = C(I)
        GO TO 26
   25   B(I) = C(I) - 2.
   26   CONTINUE
       END DO
       WRITE (6, *) B

       LL1 = LA(5)
       DO I=1,10
        IF (LL1) THEN
         IF (A(I) - 1.) 29, 27, 28
        END IF
   27   B(I) = C(I)
        GO TO 29
   28   B(I) = 2. + C(I)
   29   CONTINUE
       END DO
       WRITE (6, *) B



       DO I=1,10
        IF (LA(I)) THEN
         IF (A(5) - 1.) 33, 31, 32
        END IF
   31   B(I) = C(I)
        GO TO 33
   32   B(I) = C(I) * 2.
   33   CONTINUE
       END DO
       WRITE (6, *) B
       LL2 = LA(5)



       DO I=1,10
        IF (LL2) THEN
         IF (A(5) - 1.) 36, 34, 35
        END IF
   34   B(I) = C(I)
        GO TO 36
   35   B(I) = C(I) * 2.
   36   CONTINUE
       END DO
       WRITE (6, *) B
       LL3 = LA(5)



       DO I=1,10
        IF (LL3) THEN
         IF (A(I) - 1.) 39, 37, 38
        END IF
   37   B(I) = C(I)
        GO TO 39
   38   B(I) = C(I) * 2.
   39   CONTINUE
       END DO
       WRITE (6, *) B



       DO I=1,10
        IF (LA(I)) THEN
         IF (A(5) - 1.) 43, 41, 42
        END IF
   41   B(I) = C(I)
        GO TO 43
   42   B(I) = C(I) * 2.
   43   CONTINUE
       END DO
       WRITE (6, *) B
       LL4 = LA(5)



       DO I=1,10
        IF (LL4) THEN
         IF (A(5) - 1.) 46, 44, 45
        END IF
   44   B(I) = C(I)
        GO TO 46
   45   B(I) = C(I) * 2.
   46   CONTINUE
       END DO
       WRITE (6, *) B



       DO I=1,10
        IF (LB(I)) THEN
         IF (A(I) - 1.) 49, 47, 48
        END IF
   47   B(I) = SIN (C(I))
        GO TO 49
   48   B(I) = C(I) * C(I)
   49   CONTINUE
       END DO
       WRITE (6, *) B



       DO I=1,10
        IF (A(I) .GT. B(I)) THEN
         IF (Q(I) - 1.) 53, 51, 52
        END IF
   51   B(I) = SIN (C(I))
        GO TO 53
   52   B(I) = C(I) * C(I)
   53   CONTINUE
       END DO
       WRITE (6, *) B
       STOP 
      END
 
 
 
 
 
