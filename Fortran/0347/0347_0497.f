      program main
      dimension a(10),xx(10)
      data a/10*5./,xx/10*1./

      do 10 i=1,10
        ss=a(5)-5.
        if(ss) 1,2,3
   1      x=1.
          go to 10
   2      x=2.
  10  continue
   3  x=3
      write(6,*) x

      do 110 i=1,10
        ss=a(5)-5.
        if(ss) 11,12,13
  11      xx(i)=6.
          go to 110
  12      xx(i)=2.
 110  continue
  13  xx(5)=7.
      write(6,*) xx

      do 210 i=1,10
        ss=a(5)+5.
        if(ss) 21,22,23
  21      xx(i)=1.
          go to 210
  22      xx(i)=2.
 210  continue
  23  xx(5)=7.
      write(6,*) xx
      stop
      end
