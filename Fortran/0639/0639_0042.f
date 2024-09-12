      DIMENSION  R1(10),R2(10),R3(20),R4(10,10),R5(10,10)
      DATA  R1,R2,R3,R4,R5
     *      /10*2.0,10*3.0,20*4.0,100*5.0,100*6.0/

      DO 10 I=1,10
        R1(I) = I
        S1      = R2(I)
        DO 10 J=1,10
          R2(J) = R1(J) * S1
          R3(J) = R3(20) + R2(J)
          R4(J,I) = R4(J,2) * 2.0
          R5(I,J) = R5(2,J) + 1.0
   10 CONTINUE

      PRINT *,R1,R2,R3,R4,R5
      STOP
      END
