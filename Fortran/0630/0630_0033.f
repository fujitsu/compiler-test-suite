      real * 8 A(100),B(100,100),C(100,100),D(100)
      do j=1,100
      do i=1,100
       a(i) = i
       b(i,j) = i +j
       c(i,j) = i+ j + 1
       d(i) = i + j
      enddo
      enddo
      m = 100
      n = 1
      call sub(A,B,C,D,M,N)
      write(6,*) c
      stop
      end
      SUBROUTINE SUB(A,B,C,D,M,N)
      real * 8 a(1),b(100,100),c(100,100),d(100)
      integer * 4 m,n

      do j=1,100
      do i=1,m
       b(i,j) = i
      enddo
      do i=n,100
       a(i) = b(i,j) + d(i)
       c(i,j) = a(i)
      enddo
      enddo
      print *,a,b,c
      stop
      end
