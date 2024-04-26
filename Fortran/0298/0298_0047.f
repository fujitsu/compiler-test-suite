      REAL*4 E62(10)
      LOGICAL LL2, LL10
      DATA LL2/.TRUE./,LL10/.TRUE./
      DATA E62/10*3/

       DO M=1,5
          LL2 = LL10 .AND. M .LE. 3
          IF (LL2) THEN
             E62(M) = 0.
          END IF
       END DO
       WRITE(6,*) E62
      END

