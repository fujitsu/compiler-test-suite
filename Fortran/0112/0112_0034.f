      program test
      implicit none
      integer,parameter::n=10
      real,dimension(n)::a,b,c,r
      a=(/1.0,3.8,-0.9,-1.0,3.0,8.3,7.2,6.9,10.0,0.0/)
      b=a(n:1:-1)
      c=a+1.0
      r=9999.0
      call sub1
      write(1,*) r
      print *,'pass'
      stop
      contains
      subroutine sub1
      integer::i
      forall(i=1:n,a(i)>0.0)
         r(i)=b(i)+c(i)
      endforall
      return
      end subroutine sub1
      end program
