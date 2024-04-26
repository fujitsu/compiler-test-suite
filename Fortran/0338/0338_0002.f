      REAL A(10,10)/100*1/,B(10,10)/100*2/
      INTEGER L(10)/10*10/
      IV1=L(1)
      IV2=L(2)

      DO 1 J=1,IV1
      DO 1 I=5,IV2
1     A(J,I)=A(J,I)+B(J,I)
      WRITE(6,*) A
      STOP
      END
