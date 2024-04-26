      program main
      real*4  rc(10),rmin
      data    rc/10*1.0/
      rmin=10.
      j=0
      do 30 i=2,8
        t=-rmin
        rmin=t
        rc(i)=i
   30 continue
      write(6,*) 'rmin=',rmin,rc
      stop
      end
