      program main
      dimension a(10),xxx(10)

      do 20 j=1,10
        xxx(j)=j
  20    a(j)=j

      xx=1.
      do 10 i=1,10
        x=1.0
        if(a(i).gt.5) then
          x=2.1
          go to 1
        else
          x=1.2
        endif
        xx=x*x
  10  continue
 1    write(6,*) x,xx

      do 110 i=1,10
        x=1.0
        if(a(i).gt.5) then
          x=2.1
          go to 11
        else
          x=1.2
        endif
        xxx(i)=x*x
 110  continue
 11   write(6,*) x,xxx
      stop
      end
