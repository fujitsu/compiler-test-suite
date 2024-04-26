      program main
      dimension xx(10)
      data xx/10*1./

      do 10 i=1,10
        if(i.gt.5) go to 1
          x=2.
  10  continue
      go to 3
   1  x=1
 3    write(6,*) x

      do 110 i=1,10
        if(i.gt.5) go to 11
          xx(i)=2.
 110  continue
      go to 13
  11  xx(3)=1.
 13   write(6,*) xx
      stop
      end
