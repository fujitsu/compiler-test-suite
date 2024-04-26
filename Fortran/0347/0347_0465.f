      program main
      n=0.0
      do 10 i=1,10
        if(n.lt.5) then
          x=1.2
        else
          x=2.2
          go to 1
        endif
        n=n+1
        y=n+x
  10  continue
      go to 2
   1  y=n+x
 2    write(6,*)  y
      stop
      end
