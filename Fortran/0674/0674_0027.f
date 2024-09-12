      PROGRAM MAIN
      REAL*4 A(10,10)/100*1.0/,B(10,10)/100*2.0/
      REAL*4 C(10,10)/100*1.0/,D(10,10)/100*2.0/
      REAL*4 E(10,10)/100*1.0/,F(10,10)/100*2.0/

      DO 10 J=1,10
        DO 20 I=1,10
          WRITE(6,1) A(I,J),B(I,J)
   20   CONTINUE
        DO 10 I=1,10
          B(I,J) = A(I,J)
   10 CONTINUE

      DO 50 J=1,10
        DO 60 I=1,10
          WRITE(6,1) C(I,J),D(I,J)
   60   CONTINUE
        DO 50 I=1,10
          E(I,J) = F(I,J)
   50 CONTINUE
   1  FORMAT(/,F6.2,1X,F6.2)
      STOP
      END
