      program main
      do 10 i=1,10
        if(i-5) 1,2,3
   1    if(i-3) 2,3,4
   2      x=2.
          go to 10
   3      x=3.
  10  continue
   4  x=4.
 600  write(6,*) x
      stop
      end
