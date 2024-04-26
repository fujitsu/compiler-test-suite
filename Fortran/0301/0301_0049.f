      INTEGER,ALLOCATABLE::B(:)
      call sub1(nn,n)
      ALLOCATE(B(1:N))
      call sub2(b,n)
      N = NN
      B(1:N) = B(1:N) + 1
      print *,b
      END

      subroutine sub1(nn,n)
      nn = 10
      n = 10
      end

      subroutine sub2(b,n)
      INTEGER::B(N)
      integer:: n,i
      do i=1,n
         b(i)=i
      enddo
      end
