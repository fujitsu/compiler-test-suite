      program main
      dimension x(10),xx(10)
      data x/10*1./,xx/10*1./
      do 10 i=1,10
        if(5-5) 1,2,3
   1      x(i)=1.
          go to 10
   2      x(3)=2.
          go to 4
   3      x(i)=3.
  10  continue
   4  x(6)=4.
      write(6,*) x
      do 110 i=1,10
        if(5+5) 11,12,13
  11      xx(i)=1.
          go to 110
  12      xx(3)=2.
          go to 14
  13      xx(i)=3.
 110  continue
  14  xx(6)=4.
      write(6,*) xx
      stop
      end
