      REAL A(10)/10*1.0/,B(10)/10*1.0/
      DO 10 I=1,10
        N=A(I)
        DO 10 J=1,10
 10       A(N)=A(J)+B(J)
      WRITE(6,1000) A
 1000 FORMAT(F10.5)
      END
