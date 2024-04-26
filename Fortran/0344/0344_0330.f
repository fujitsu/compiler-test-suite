      PROGRAM MAIN
      
      L=2
      DO 5 I=1,10,L
        N=I
        IF (N.EQ.I) CALL SUB1(N)
    5 CONTINUE
      STOP
      END
C
      SUBROUTINE SUB1(N)
      INTEGER*4 A(100),B(100)/100*0/
      DATA A/100*1/
      DO 10 I=1,100,N
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
      DO 20 J=1,10,3
        K=K+J
  20  CONTINUE
      RETURN
      END
