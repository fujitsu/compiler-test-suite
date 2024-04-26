      program main

      do 10 i=1,10
        ss=i*1.2
        if(ss.gt.5) go to 1
          x=2.
  10  continue
      go to 3
   1  x=1
 3    write(6,*) x
      stop
      end
