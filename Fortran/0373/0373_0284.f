      program main
      implicit none
      integer,parameter::n=10
      real,dimension(n)::a,b,c,r
      a=(/1.0,3.8,-0.9,-1.0,3.0,8.3,7.2,6.9,10.0,0.0/)
      b=a(n:1:-1)
      c=a+1.0
      r=sub1(a,b)
      write(6,*) r
      stop
      contains
      elemental real function sub1(a,b)
      real,intent(in)::a,b
      sub1=a-b+1.0
      return
      end function sub1
      end program
