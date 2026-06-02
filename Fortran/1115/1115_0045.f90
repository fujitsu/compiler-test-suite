      subroutine sub(a,b,c,xx,m,y,z)
        real*8 a(m),b(m),y(m),z(m),c(m)
        real xx(m,m)
        do i=1,m-1
           do j=1,m
              xx(i,j) = 2
           enddo
      enddo
      do i=1,m
         y(i) = y(i) + 2
      enddo
      do i=1,m-2
         z(i) = z(i) + 3
      enddo
      c = 0
      do i=1,m-3
         a(i) = 1
      enddo
      do i=1,m-4
         b(i) = 2
      enddo


    end subroutine sub

    program main
      integer*4 m
      real*8 a(100),b(100),y(100),z(100),c(100)
      real xx(100,100)
      m = 100
      y = 1
      z = 0

      call sub(a,b,c,xx,m,y,z)
      print *,"OK"

    end program main
