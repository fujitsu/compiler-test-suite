      PARAMETER(N=2,M=1)
      REAL*8 A(N,N),C(M,N),b(n,m)
      A(1,1)=1.0d0
      A(1,2)=99.0d0
      A(2,1)=10.0d0
      A(2,2)=1.0d0
      C(1,1)=1.0d0
      C(1,2)=1.0d0
      b(1,1)=2.0d0
      b(2,1)=2.0d0

      CALL T1(M,N,A,N,C,M)
      write(6,*) C
      CALL t2(m,n,a,c,b)
      write(6,*) C

      END
      SUBROUTINE T1(M,N,A,LDA,C,LDC)
      REAL*8 A(N,N),C(M,N)

      DO IN = 1, N
         DO IM = 1, M
            DO IK = 1, IN-1
               C(IM,IN) = C(IM,IN) - A(IN,IK)*C(IM,IK)
            END DO
         END DO
      END DO
      END
      subroutine t2(m,n,a,c,b)
      real*8 a(n,n),c(m,n),b(n,m)
      do j=1,m
        do k=1,n
          do i=1,j
            c(i,j)=c(i,j)+a(i,k)*b(k,j)
          enddo
        enddo
      enddo
      end
