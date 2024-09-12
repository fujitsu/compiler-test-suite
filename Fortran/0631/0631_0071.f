      CALL       SUB(10000)
      END
      SUBROUTINE SUB(N)
      REAL A(10000)/10000*0/
      REAL B(10000)/10000*1/

      DO 10 I=1,N
      DO 10 J=1,N
        A(I)=B(J)
   10 CONTINUE
      WRITE(6,*) (A(I),I=1,1000)
      END
