      real*8 a(2,2),b(2,2),c(2,2)
      a=5
      b=5
      c=5
      L=2
      M=2
      N=2
      MM=1
      call sub(a,b,c,L,M,N,MM)
      write(6,*)"a=",a
      write(6,*)"b=",b
      write(6,*)"c=",c
      end
      subroutine sub(a,b,c,L,M,N,MM)
      real(kind=8),dimension(1:L,1:N) :: c
      real(kind=8),dimension(1:L,1:M) :: a
      real(kind=8),dimension(1:M,1:N) :: b
      DO 60 J=1,N
      DO 10 I=1,L
 10     C(I,J)=0.D0
      DO 30 K=1,MM,2
      DO 20 I=1,L
 20     C(I,J)=C(I,J)+A(I,K)*B(K,J)+A(I,K+1)*B(K+1,J)
 30   CONTINUE
      DO 50 K=MM+1,M
      DO 40 I=1,L
 40     C(I,J)=C(I,J)+A(I,K)*B(K,J)
 50     CONTINUE
 60     CONTINUE
      end subroutine
