      program main
      x=2.5
      do 10 i=1,10
        if(i.gt.5) then
          x=1.2
        elseif(i.gt.2) then
          x=2.2
          go to 1
        endif
        xx=x*x
  10  continue
      go to 3
   1  xx=x*x
 3    write(6,*) x,xx
      stop
      end
