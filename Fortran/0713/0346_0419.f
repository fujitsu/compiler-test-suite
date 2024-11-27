          INTEGER    A(10),B(10),C(10),D(10)
          DATA A/10*1    /,B/10*2    /
          DATA C/1   ,2   ,3   ,4   ,5   ,6   ,7   ,8   ,9   ,10   /
          DATA D/9   ,8   ,7   ,6   ,5   ,4   ,3   ,2   ,1   ,00   /
          INTEGER    ANS
          DATA ANS/0    /
          REAL*4     Z(10)
          LOGICAL L(10)
          DATA L/4*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
          J = 1
          DO 10 I = 1 , 10
            IF(L(I)) THEN
               ANS = B(I) + C(I)
               IF(  I  .LE. 6   ) THEN
                  ANS = C(I) + 1.0
               ENDIF
               Z(I) = C(I) - ANS
            ENDIF
            IF(Z(J) .LE.  4.0  ) GO TO 10
            IF(L(I)) THEN
               D(I) = B(I) + C(I)
               A(I) = C(I) - ANS
            ENDIF
 10       CONTINUE
          PRINT *,D
          END
