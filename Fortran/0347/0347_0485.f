      program main
      dimension a(10),xx(10),xxx(10)
      data a/5*0.0,5*6.0/,xx/10*0./,xxx/10*0./

      do 10 i=1,10
        if(a(7).gt.5) then
          x=2.1
          go to 1
        else
          x=1.2
        endif
        xx(i)=x*x
  10  continue
      go to 3
   1  xx(4)=x*x
 3    write(6,*) x,xx

      do 110 i=1,10
        if(a(7).le.5) then
          x=2.1
          go to 11
        else
          x=1.2
        endif
        xxx(i)=x*x
 110  continue
      go to 13
  11  xxx(4)=x*x
 13   write(6,*) x,xxx
      stop
      end
