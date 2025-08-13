      program test
      implicit none
      integer,parameter::n=10
      real,dimension(n,n)::a,b,c,r
      data a/1.0,3.8,-0.9,-1.0,3.0,10*8.3,20*7.2,30*6.9,34*10.0,0.0/
      b=a(n:1:-1,n:1:-1)
      c=a+1.0
      r=9999.0
      call sub1
      write(2,*) r
      print *,'pass'
      stop
      contains
      subroutine sub1
      integer::i,j
      forall(i=1:n,a(i,i)>0.0)
         forall(j=1:n,j>i)
            r(j,i)=b(j,i)+c(j,i)
         endforall
      endforall
      return
      end subroutine sub1
      end program
