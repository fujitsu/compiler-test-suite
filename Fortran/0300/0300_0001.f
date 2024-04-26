      parameter (m=3200)
      parameter (n= 100)
      real*8 a(m),b(m)
      integer c(m)
      common //a,b,c
      real*8 t0,t1
      jj=1
      do j=1,m
       b(j) = j
       c(j) = jj
       jj=jj+32
      enddo

      do i=1,1000
        call sub(n)
      enddo

      print *, a(1)
      print *, a(100)
      end

      subroutine sub(n)
      parameter (m=3200)
      real*8 a(m),b(m)
      integer c(m)
      common //a,b,c
      integer*4 n
      do i=1,n
        a(i)=b(c(i))
      enddo
      end

