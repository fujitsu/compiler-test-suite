      program main
      integer err
      real*8 a(10),b(10)
      do 10 i=1,10
   10  b(i)=.9999d2
      call sub(a,10)
      err=0
      do 20 i=1,10
   20  if (a(i).ne.b(i)) err=err+1
      if (err.ne.0) then
       print *,'*** ng *** error count =',err
      else
       print *,'*** ok ***'
       end if
      stop
      end
      subroutine sub(x,n)
      real*8 x(*)
      integer echo
      do 10 i=echo(1),n
   10  x(i)=.9999d5
      do 20 i=1,echo(n)
   20  x(i)=.9999d4
      do 30 i=1,n,echo(1)
   30  x(i)=.9999d3
      do 40 i=echo(1),echo(n),echo(1)
   40  x(i)=.9999d2
      return
      end
      integer function echo(n)
      echo=0
      do 10 i=1,n
   10 echo=echo+1
      return
      end
