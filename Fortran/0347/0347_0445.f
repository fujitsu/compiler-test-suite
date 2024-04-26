      program main
      dimension xxx(10)
      data xxx/10*0./

      do 10 i=1,10
        if(i.gt.5) go to 1
          x=1.
          go to 2
   1      x=2.
  10  continue
      go to 3
   2  x=1.
 3    write(6,*) x

      do 110 i=1,10
        if(i.gt.5) go to 11
          xxx(6)=1.
          go to 12
  11      xxx(i)=2.
 110  continue
      go to 13
  12  xxx(5)=1.
 13   write(6,*) xxx
      stop
      end
