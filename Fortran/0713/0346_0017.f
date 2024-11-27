       DIMENSION A(8192),B(8192),C(8192),X(8192),Y(8192),ISUM(8192)
       DIMENSION IA(8192),IB(8192),IC(8192),IX(8192),IY(8192)
       DIMENSION IW(8192),RW(8192)
       data ISUM/8192*0/

       ERROR = 1.0E-6
       INO  = 1
         I0001 = 1
         R0001 = 1.0
         M     = 0
         ISUM(1) = 0
         DO 20 I = 1 , 8192
           IA(I) = I
           IB(I) = IA(I) + I0001
           IC(I) = IA(I) + IB(I)
           A (I) = FLOAT(I)
           B (I) = A (I) + R0001
           C (I) = A (I) + B(I)
           IY(I) = - I
           Y(I)  = -A(I)
 20     CONTINUE

         DO 30 I = 1 , 8192
           IX(I) = IA(I) + IB(I) + IC(I)
           X(I)  =  A(I) + B(I) + C(I)
 30      CONTINUE

         DO 40 I = 1 , 8192
           IANS = IC(I) - IB(I) - IA(I)
           RANS =  C(I) - B(I) - A(I)
           IW(I) = IC(I) + IY(I)
           RW(I)=  C(I) + Y(I)
           XANS =  RW(I)- B(I)
           IF ( IANS .NE. 0     .OR. RANS .GE. ERROR ) GO TO 42
           IF ( IW(I) .NE. IB(I) .OR. XANS .GE. ERROR ) GO TO 43
 40      CONTINUE
         WRITE(6,1000)   INO
         GO TO 100
 42      WRITE(6,2000) INO
         WRITE(6,2100) I ,IANS , RANS
         GO TO 100
 43      WRITE(6,2000) INO
         WRITE(6,2110) I ,IW(I), XANS

 100     CONTINUE
         INO = INO + 1
         IDX = -5
         DO 110 I = 6 , 8192 ,4
           RR = FLOAT(I)
           RX = X(I+IDX) - RR
           IF ( IX(I+IDX).NE. I .OR. RX .GE. ERROR )  GO TO 112
           IDX = IDX - 3
 110     CONTINUE
         WRITE(6,1000) INO
         GO TO 200
 112     WRITE(6,2000) INO
         WRITE(6,2120) I ,IX(I) , RX

 200     CONTINUE
         INO = INO + 1
         JAX = 6
       DO 10 J = 1,8192 , 3
         IY(J) = IY(J) + IA(J)
         Y(J) =  Y(J) + A(J)
         M = M + J
         ISUM(J) = J + ISUM(J)
         IF ( IY(J) .NE. 0 .OR. Y(J) .GE. ERROR ) GO TO 300
 10    CONTINUE
       WRITE(6,1000) INO
       GO TO 7770

300    WRITE(6,2000) INO
       WRITE(6,2130) J ,IY(I) , Y(I)

7770   CONTINUE
       STOP
1000   FORMAT(1X,' *** TEST NO.  ',I3,'          *****( OK )***** ')
2000   FORMAT(1X,' *** TEST NO.  ',I3,'          *****( NG )***** ')
2100   FORMAT(1X,'  I = ',I3,' IANS= ',I8,'  RANS = ',E20.10)
2110   FORMAT(1X,'  I = ',I3,'  IW = ',I8,'  XANS = ',E20.10)
2120   FORMAT(1X,'  I = ',I3,' IX  = ',I8,'  RX   = ',E20.10)
2130   FORMAT(1X,'  J = ',I5,' IY  = ',I8,'  Y    = ',E20.10)
       END
