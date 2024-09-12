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
