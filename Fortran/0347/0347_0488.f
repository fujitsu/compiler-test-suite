      program main
      dimension a(10),b(10),x(10)
      data b/10*0.0/

      do 20 j=1,10
        x(j)=j
  20    a(j)=j

      do 10 i=1,10
        xx=1.0
        if(a(7).gt.5.) go to 1
          x(i)=2.
          b(i)=x(i)*3.-1.5+xx
  10  continue
      go to 3
   1  x(3)=1
 3    write(6,*) x
      write(6,*) a
      write(6,*) b

      do 110 i=1,10
        xx=1.0
        if(a(7).le.5.) go to 11
          x(i)=2.
          b(i)=x(i)*3.-1.5+xx
 110  continue
      go to 13
  11  x(3)=1
 13   write(6,*) x
      write(6,*) a
      write(6,*) b
      stop
      end
