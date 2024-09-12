      program main
      implicit none
      integer,parameter::n=10
      real,dimension(n),target::a,c,r
      real,dimension(:),pointer::b
      a=(/1.0,3.8,-0.9,-1.0,3.0,8.3,7.2,6.9,10.0,0.0/)
      call sub1
      b=>a(n:1:-1)
      r=c+b
      write(6,*) r
      stop
      contains
      subroutine sub1
      integer i
      do i=1,n
         b=>null()
         c(i)=a(i)+1.0
      enddo
      return
      end subroutine sub1
      end program
