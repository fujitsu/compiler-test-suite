      program main
      dimension a(10),b(10)
      data b/10*0.0/

      do 20 j=1,10
  20    a(j)=j

      do 10 i=1,10
        xx=1.0
        if(a(i).gt.5.) go to 1
          x=2.
          b(i)=x*3.-1.5+xx
  10  continue
      go to 3
   1  x=1
 3    write(6,*) x
      write(6,*) a
      write(6,*) b
      stop
      end
