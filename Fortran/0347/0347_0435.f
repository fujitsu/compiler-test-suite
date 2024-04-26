      program main
      dimension a(10),xx(10)

      do 20 j=1,10
      xx(j)=j
  20  a(j)=j

      do 10 i=1,10
        b=1.0
        if(a(i)-5) 1,2,3
   1      x=1.
          go to 10
   2      x=b
  10  continue
      go to 4
   3  x=3
 4    write(6,*) b

      do 110 i=1,10
        b=1.0
        if(a(i)-5) 11,12,13
  11      xx(i)=1.
          go to 110
  12      xx(i)=b
 110  continue
      go to 14
  13  xx(4)=3
 14   write(6,*) b
      stop
      end
