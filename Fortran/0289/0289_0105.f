      program main
      real*4 a,b,c
      real*4   w_c
      real*4,allocatable,dimension(:)::w_a
      pointer (pc ,c),(pa ,a)
      pc = loc (w_c)
      allocate (w_a(1))
      pa = loc (w_a(1))
      write(6,*)'***  ok  ***'
      c=3.0
      b=1.0
      do 10 i=1,10
        a=b/c
        b=b+1
   10 continue
      if((a.gt.3.33333).and.(a.lt.3.33334)) then
        write(6,*)'***  ok  ***'
      else
        write(6,*)'***  ng  ***'
      end if
      b=10.0
      a=10.0
      c=10.0
      stop
      end
