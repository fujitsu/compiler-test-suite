       IMPLICIT REAL*8 (A-H,O-Z)
       DIMENSION A(100,100)
       DATA A/10000*2.0/

       N=100
       K=100
       CALL SUB(A,N,K)
       WRITE (6,999) A
  999  FORMAT (10F10.7)
       STOP
       END

       SUBROUTINE SUB(A,N,K)
       IMPLICIT REAL*8 (A-H,O-Z)
       DIMENSION A(N,K)
       N1=N+1
       Pi=DATAN(1.0D0)*4.0D0/DFLOAT(N1)
       C=DSQRT(2.0D0/N1)
       DO 10 I=1,N
       DO 10 J=1,I
         A(I,J)=C*DSIN(DFLOAT(I*J)*Pi)
10     A(J,I)=A(I,J)
       RETURN
       END
