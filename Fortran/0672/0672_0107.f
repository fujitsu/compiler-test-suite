      SUBROUTINE SUB(M,M0,A,B,XL,W,LW)
      DIMENSION A(M0,M0),B(M0,M0),XL(M0),W(M0,6)
      DO 32 J=1,M
      DO 29 K=1,M
   29 W(K,1)=A(K,J)
      DO 31 I=1,M
      A(I,J)=0.0
      DO 30 K=1,M
      A(I,J)=A(I,J)+B(K,I)*W(K,1)
   30 CONTINUE
   31 CONTINUE
   32 CONTINUE
      RETURN
      END

      PROGRAM MAIN
      DIMENSION A(10,10),B(10,10),XL(10),W(10,6)
      DATA M/10/,M0/10/
      DATA A,B,XL,W/100*3.,100*2.,10*1.,60*0./
      CALL SUB(M,M0,A,B,XL,W,LW)
      WRITE(6,*) A
      STOP
      END
