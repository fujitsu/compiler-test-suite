      program main
      dimension a(10),b(11),xx(10)
      data b/11*1.5/,xx/10*1./

      do 20 j=1,10
  20    a(j)=j

      x=1.
      do 10 i=1,10
        ss=b(i)
        if(a(7).gt.5.) go to 1
          x=2.+ss
  10  continue
 1    write(6,*) a,b,x

      do 110 i=1,10
        ss=b(i)
        if(a(7).gt.5.) go to 11
          xx(i)=2.+ss
 110  continue
 11   write(6,*) a,b,xx
      stop
      end
