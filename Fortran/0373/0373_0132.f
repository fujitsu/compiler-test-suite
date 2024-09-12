      subroutine sub(n,a,b)
      real*8 a(10),b(10)
      do i=n,n+9
         a(i+10)=b(i+10)
      enddo
      end
      program main
      real*8 a(10),b(10)
      do i=1,10
         b(i)=i
      enddo
      print*,b
      call sub(-9,a,b)
      print*,a
      end
