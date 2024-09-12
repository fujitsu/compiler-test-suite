      subroutine sub(n)
      real*16,dimension(n) :: a,b,c
      do i=1,n
         a(i)=10.0
         c(i)=20.0
         b(i)=30.0
      enddo
      call poo(a,b,c,n)
      end

      subroutine poo(a,b,c,n)
      real*16,dimension(n) :: a,b,c
      print*,a
      print*,b
      print*,c
      end

      program main
      n = 10
      call sub(n)
      end
