      program main
      dimension a(10),x(10),xx(10)
      do 20 j=1,10
      x(j)=j
      xx(j)=j
  20  a(j)=j
      do 10 i=1,10
        if(a(2)-5) 1,2,3
   1      x(i)=1.
          go to 10
   2      x(i)=2.
  10  continue
   3  x(3)=3.
      write(6,*) x
      do 110 i=1,10
        if(a(2)-5) 11,12,13
  11      xx(i)=1.
          go to 110
  12      xx(i)=2.
 110  continue
  13  xx(3)=3.
      write(6,*) xx
      stop
      end
