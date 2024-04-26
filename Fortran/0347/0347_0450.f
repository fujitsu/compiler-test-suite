      program main

      do 10 i=1,10
        ss=i*1.2
        if(ss.gt.5) go to 1
        if(ss.gt.3) go to 2
          x=3.
          go to 10
   1      x=1.
  10  continue
      go to 3
   2  x=2.
 3    write(6,*) x
      stop
      end
