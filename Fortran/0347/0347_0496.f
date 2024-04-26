      program main
      dimension a(10),xx(10)
      data a/10*1./,xx/10*1./

      do 10 i=1,10
        ss=a(5)-5.
        if(ss) 1,2,3
   1      x=1.
          go to 10
   2      x=2.
          go to 4
   3      x=3
  10  continue
   4  x=4.
      write(6,*) x

      do 110 i=1,10
        ss=a(5)-5.
        if(ss) 11,12,13
  11      xx(i)=1.
          go to 110
  12      xx(3)=2.
          go to 14
  13      xx(i)=3
 110  continue
  14  xx(7)=4.
      write(6,*) xx

      do 210 i=1,10
        ss=a(5)+5.
        if(ss+1.) 21,22,23
  21      xx(i)=1.
          go to 210
  22      xx(3)=2.
          go to 24
  23      xx(i)=3
 210  continue
  24  xx(7)=4.
      write(6,*) xx
      stop
      end
