      program main
      dimension xx(10)
      data xx/10*0./
      do 10 i=1,10
        if(i-5) 1,2,3
   1      x=1.
          go to 10
   2      x=2.
  10  continue
   3  x=3
      write(6,*) x
      do 110 i=1,10
        if(i-5) 11,12,13
  11      xx(i)=1.
          go to 110
  12      xx(i)=2.
 110  continue
  13  xx(8)=3
      write(6,*) xx
      stop
      end
