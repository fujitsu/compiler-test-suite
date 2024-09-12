      program main
      implicit none
      integer,parameter::n=10
      real,dimension(n)::a,b,c,r
      a=(/1.0,3.8,-0.9,-1.0,3.0,8.3,7.2,6.9,10.0,0.0/)
      b=a(n:1:-1)
      c=a+1.0
      r=9999.0
      call sub1
      write(6,*) r
      stop
      contains
      subroutine sub1
      where (a>0.0)
         c=-c
         where (b>=c)
            r=(b-c)/a
         elsewhere
            r=1.0/a
         endwhere
      endwhere
      return
      end subroutine sub1
      end program
