      program main

      do 10 i=1,10
        ss=i*1.2-5.
        if(ss.gt.0.) then
          if(ss) 1,2,3
   1      x=1.
          go to 10
   2      x=2.
          go to 4
   3      x=3
        endif
  10  continue
 4    write(6,*) x
      stop
      end
