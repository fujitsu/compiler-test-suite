      program main
      parameter(n=10)
      real*8,dimension(:),allocatable :: a,b
      allocate(a(n),stat=istat)
      print*,istat
      allocate(b(n))
      a = 1.0
      b = 2.0
      call sub(a,n)
      call sub(b,n)
      deallocate(b)
      deallocate(a)
      end

      subroutine sub(a,n)
      real*8,dimension(n) :: a
      print*,a
      end

