      program main

      do 10 i=1,10
        if(i.gt.5) go to 1
        if(i.eq.8) then
          x=1.
          go to 2
        endif
   1    x=2
  10  continue
 2    write(6,*) x
      stop
      end
