      real * 8 B(100,100),C(100,100),D(100)
      do j=1,100
      do i=1,100
       b(i,j) = i +j
       c(i,j) = i+ j + 1
       d(i) = i + j
      enddo
      enddo
      m = 100
      n = 1
      call sub(B,C,D,M,N)
      write(6,*) c
      stop
      end
      subroutine sub(b,c,d,m,n)
      real * 8,pointer :: ap(:)
      real * 8,dimension(100),target :: a
      real * 8 b(100,100),c(100,100),d(100)
      integer * 4 m,n
      ap=>a
      do i=1,100
       a(i) = 0
      enddo

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
