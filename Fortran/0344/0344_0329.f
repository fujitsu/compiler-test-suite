      PROGRAM MAIN
      
      DO 5 I=1,10
        N=I
        CALL SUB1(N)
    5 CONTINUE
      STOP
      END
C
      SUBROUTINE SUB1(N)
      INTEGER*4 A(100),B(100)
      DATA A/100*0/
      DO 10 I=1,100
          A(I)=I
          M=A(I)*I
          CALL SUB2(M)
          B(I)=A(I)+N
   10 CONTINUE
      WRITE(6,*) (B(I),I=1,100,10)
      RETURN
      END
C
      SUBROUTINE SUB2(K)
      DO 20 J=1,10
        K=K+J
  20  CONTINUE
      RETURN
      END
