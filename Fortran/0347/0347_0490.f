      program main
      dimension a(10),x(10)
      data a/10*10/,x/10*1./

      do 10 i=1,10
        ss=1.2+a(3)
        if(ss.gt.5) go to 1
          x(i)=2.
  10  continue
      go to 3
   1  x(3)=1
 3    write(6,*) x

      do 110 i=1,10
        ss=1.2+a(3)
        if(ss.le.5) go to 11
          x(i)=2.
 110  continue
      go to 13
  11  x(3)=1
 13   write(6,*) x
      stop
      end
