      program main
      dimension a(10),xx(10)

      do 20 j=1,10
      xx(j)=j
  20  a(j)=j

      do 10 i=1,10
        b=1.0
        if(a(8)-5) 1,2,3
   1      x=1.
          go to 10
   2      x=b
  10  continue
      go to 4
   3  x=3.
 4    write(6,*) b

      do 110 i=1,10
        b=1.0
        if(a(8)-5) 11,12,13
  11      xx(i)=1.
          go to 110
  12      xx(i)=b
 110  continue
      go to 14
  13  xx(i)=3.
 14   write(6,*) b,xx

      do 210 i=1,10
        b=1.0
        if(a(8)-3) 21,22,23
  21      xx(i)=1.
          go to 210
  22      xx(i)=b
 210  continue
      go to 24
  23  xx(i)=3.
 24   write(6,*) b,xx
      stop
      end
