subroutine dummy()
end subroutine dummy

subroutine sub(a,b,c,d,xx,yy,m,x,y,z)
  real*8 a(m),b(m),x(m),y(m),z(m),c(m),d(m)
  real xx(m,m),yy(m,m)
      do i=2,m
         x(i) = x(i) + 1
!ocl fission_point
         y(i) = y(i) + 2
!ocl fission_point
         z(i) = z(i) + 3
         b(i) = b(i-1) + 4
         a(i) = b(i) + 5
      enddo

      do i=1,m-2
         c(i) = i
      enddo
      do i=1,m-2
         d(i) = i
      enddo
      do i=1,m-1
         c(i) = c(i) + i
      enddo
      call dummy()
      do i=1,m
         do j=1,m
            xx(i,j) = i+j
         enddo
      enddo
      do j=1,m
         do i=1,m
            yy(j,i) = i-j
         enddo
      enddo

    end subroutine sub

    program main
      integer*4 m
      real*8 a(100),b(100),x(100),y(100),z(100),c(100),d(100)
      real xx(100,100),yy(100,100)
      m = 100
      x = 1
      y = 2
      z = 3
      a = 4
      b = 5
      c = 6
      
      call sub(a,b,c,d,xx,yy,m,x,y,z)
      print *,"OK"

    end program main
