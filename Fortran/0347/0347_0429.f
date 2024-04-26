      program main
      do 10 i=1,10
         ss=i*1.2-5
        if(ss) 1,2,3
   1    if(ss-2) 2,3,4
   2      x=2.
          go to 10
   3      x=3.
  10  continue
   4  x=4.
      write(6,*) x
      stop
      end
