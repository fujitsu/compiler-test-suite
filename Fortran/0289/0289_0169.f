      program main
      implicit  real(h)
      implicit  logical(l),character*80(m)
      integer   num
      common    a,z,c
      complex   a,z
      character*2 b(10),bb*6
      equivalence (b(2),bb)
      data bb/'abcde '/
      do 10 j=1,10
       mmmm(2*j-1:2*j)=b(j)
10    continue
      a=(0.8,0.5)
      z=(1.5,2.0)
      c=3.0
      num=0
      call sub1(num)
      call sub2(num)
      if (bb.ne.'abcde ') then
       num=num+1
      endif
      if (num.eq.0) then
      write(6,100)
100   format(1h,'** test is ok **')
      else
      write(6,150)
150   format(1h,'** test is ng **')
      end if
      stop
      end
      subroutine sub1(n1)
      common     x,y,z
      real*8     x,y,z
      integer    n1
      if (x.ne.0.8) then n1=n1+1
      if (y.ne.0.5) then n1=n1+1
      end
      subroutine sub2(n2)
      common     e(2),g(2),h
      real       e,g,h
      integer    n2
      if (e(1).ne.0.8) then n2=n2+1
      if (e(2).ne.0.5) then n2=n2+1
      end
