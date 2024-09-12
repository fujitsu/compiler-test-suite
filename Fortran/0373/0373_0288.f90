      program main
      implicit none
      integer::i
      integer,parameter::n=10
      integer(8),dimension(n)::r=(/(-9_8,i=1,n)/)
      real,dimension(n)::a
      data a/0.11,-0.22,0.33,-0.44,-0.55,0.66,-0.77,0.88,-0.99,0.01/
      call sub1
      write(6,*) r
      stop
      contains
      subroutine sub1
      do i=1,n
         r(i)=ceiling(a(i)*10.0,kind=8)
      enddo
      return
      end subroutine sub1
      end program
