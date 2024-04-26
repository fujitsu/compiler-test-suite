      program main
      dimension a(10),bb(10),xx(10)

      do 20 j=1,10
      bb(j)=j
      xx(j)=j
  20  a(j)=j

      x=0.
      do 10 i=1,10
        if(a(5)-5) 1,2,3
   1      b=3.
          go to 10
   2      b=2.
          go to 4
   3      b=3
  10  continue
      go to 5
   4  x=b
 5    write(6,*) x

      do 110 i=1,10
        if(a(5)-5) 11,12,13
  11      bb(i)=3.
          go to 110
  12      bb(5)=2.
          go to 14
  13      bb(i)=3.
 110  continue
      go to 15
  14  xx(7)=bb(8)
 15   write(6,*) xx,bb

      do 210 i=1,10
        if(a(5)-4) 21,22,23
  21      bb(i)=3.
          go to 210
  22      bb(5)=2.
          go to 24
  23      bb(i)=3.
 210  continue
      go to 25
  24  xx(7)=bb(8)
 25   write(6,*) xx,bb
      stop
      end
