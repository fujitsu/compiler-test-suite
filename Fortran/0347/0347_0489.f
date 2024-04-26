      program main
      dimension x(10)
      data x/10*0./

      do 10 i=1,10
        ss=2.*1.2
        if(ss.gt.5) go to 1
          x(4)=1.
          go to 2
   1      x(i)=2.
  10  continue
      go to 3
   2  x(3)=3.
 3    write(6,*) x

      do 110 i=1,10
        ss=2.*1.2
        if(ss.le.5) go to 11
          x(4)=1.
          go to 12
  11      x(i)=2.
 110  continue
      go to 13
  12  x(3)=3.
 13   write(6,*) x
      stop
      end
