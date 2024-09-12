      program main
      parameter(n=10)
      real*8,dimension(:),allocatable :: a,b,c
      allocate(a(n),b(n),c(n))
      a = 1.0
      b = 2.0
      c = 3.0
      call sub(a,n)
      call sub(b,n)
      call sub(c,n)
      deallocate(a,b,c)
      end

      subroutine sub(a,n)
      real*8,dimension(n) :: a
      print*,a
      end

