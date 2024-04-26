      program main
      dimension a(10),x(10)
      data a/10*1./,x/10*1./

      do 10 i=1,10
        if(a(2).gt.5) go to 1
          x(i)=1.
          go to 2
   1      x(i)=2.
  10  continue
      go to 3
   2  x(i)=1.
 3    write(6,*) x

      do 110 i=1,10
        if(a(2).le.5) go to 11
          x(i)=1.
          go to 12
  11      x(i)=2.
 110  continue
      go to 13
  12  x(3)=1.3
 13   write(6,*) x
      stop
      end
