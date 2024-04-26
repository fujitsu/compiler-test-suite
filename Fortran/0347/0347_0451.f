      program main
      dimension a(10),xx(10)

      do 20 j=1,10
        xx(j)=j
  20    a(j)=j

      x=2.
      do 10 i=1,10
        if(a(5).gt.5.) go to 1
          x=1.
  10  continue
 1    write(6,*) x

      do 110 i=1,10
        if(a(5).gt.5.) go to 11
          xx(i)=1.
 110  continue
 11   write(6,*) xx
      stop
      end
