      DIMENSION A(1),B(100,100),C(100,100),D(100)
      a(1) = 1
      do j=1,100
      do i=1,100
       b(i,j) = i +j
       c(i,j) = i+ j + 1
       d(i) = i + j
      enddo
      enddo
      m = 1
      n = 1

      do j=1,100
      do i=1,m
       b(i,j) = i
      enddo
      do i=n,1
       a(i) = b(i,j) + d(i)
       c(i,j) = a(i)
      enddo
      enddo
      print *,a,b,c
      stop
      end
