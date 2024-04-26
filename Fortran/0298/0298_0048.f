      REAL*4 E62(10),E63(10)
      LOGICAL LL2,LL3,LL4(5), LL10, LL11
      DATA LL2/.TRUE./,LL10/.TRUE./,LL11/.FALSE./
      DATA E62/10*3./,E63/10*4./

       DO M=1,5
          LL2 = LL10 .AND. M .LE. 3
          IF (LL2) THEN
             E62(M) = 0.
          ENDIF
          LL3 = LL10 .OR. LL11
          LL4(M) = E63(M) .GT. 0
       END DO
       WRITE(6,*) E62
       WRITE(6,*) LL2,LL3,LL4
      END

