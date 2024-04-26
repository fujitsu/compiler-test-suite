      program main
      dimension xxx(10)
      data xxx/10*1./

      do 10 i=1,10
        if(i.gt.5) then
          x=2.1
          go to 1
        else
          x=1.2
        endif
        xx=x*x
  10  continue
      go to 3
   1  xx=x*x
 3    write(6,*) x,xx

      do 110 i=1,10
        if(i.gt.5) then
          x=2.1
          go to 11
        else
          x=1.2
        endif
        xxx(i)=x*x
 110  continue
      go to 13
  11  xxx(2)=x*x
 13   write(6,*) x,xxx
      stop
      end
