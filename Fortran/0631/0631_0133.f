      PROGRAM MAIN
      COMMON A
      REAL A(10,10,10,10,10)
      CALL INIT
      DO 10 M=1,10
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L,M)=A(I,J,K,L,M)+3.
   10 CONTINUE
      WRITE(6,*) (A(I,1,9,1,3),I=1,10)
      END
      SUBROUTINE INIT
      COMMON A
      REAL A(100000)
      DO 10 I=1,100000
       A(I)=I*.01
   10 CONTINUE
      RETURN
      END
