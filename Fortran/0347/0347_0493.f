      program main
      dimension a(10),b(11),xx(11)
      data b/11*0.0/,xx/11*1./

      do 20 j=1,10
  20  a(j)=j

      do 10 i=1,10
        x=b(i)
        if(a(5)-5) 1,2,3
   1      x=1.
          go to 5
   2      x=2.
          go to 4
   3      x=3
   5      b(i+1)=a(i)
  10  continue
 4    write(6,*) b

      do 110 i=1,10
        ss=1.
        if(a(5)-4.-ss) 11,12,13
  11      xx(i)=1.
          go to 15
  12      xx(3)=2.
          go to 14
  13      xx(i)=3.
  15      b(i)=a(i)+xx(i)
 110  continue
 14   write(6,*) b,xx

      do 210 i=1,10
        ss=1.
        if(a(5)-3.+ss) 21,22,23
  21      xx(i)=1.
          go to 25
  22      xx(3)=2.
          go to 24
  23      xx(i)=3.
  25      b(i)=a(i)+xx(i)
 210  continue
 24   write(6,*) b,xx
      stop
      end
