      subroutine sub(a,N)
      real,dimension(1:N) :: a
      do i=1,n
         a(i)=a(i)+1.0
      enddo
      end subroutine
      program main
      integer,parameter::N=100
      real,dimension(1:N) :: a
      data a/n*1.0/
      call sub(a,n)
      print *,a(1)
      end program main
