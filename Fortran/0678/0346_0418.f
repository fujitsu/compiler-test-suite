          COMPLEX*16 A(10),B(10),C(10),D(10)
          DATA A/10*1.0D0/,B/10*2.0D0/
          DATA C/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
          DATA D/9.D0,8.D0,7.D0,6.D0,5.D0,4.D0,3.D0,2.D0,1.D0,00.D0/
          COMPLEX*16 ANS
          DATA ANS/0.0D0/
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
