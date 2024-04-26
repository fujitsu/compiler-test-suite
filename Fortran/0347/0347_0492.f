      program main
      dimension a(10),xx(10)
      data a/10*6./,xx/10*1./

      do 10 i=1,10
        if(a(3).gt.5) go to 1
          x=2.
  10  continue
      go to 3
   1  x=1
 3    write(6,*) x

      do 110 i=1,10
        if(a(3).gt.5) go to 11
          xx(i)=2.
 110  continue
      go to 13
  11  xx(7)=1.
 13   write(6,*) xx

      do 210 i=1,10
        if(a(3).le.5) go to 21
          xx(i)=2.
 210  continue
      go to 23
  21  xx(7)=1.
 23   write(6,*) xx
      stop
      end
