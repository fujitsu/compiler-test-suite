      program main
      dimension a(10),b(10)
      data b/10*0.0/

      do 20 j=1,10
  20    a(j)=1.0

      do 10 i=1,10
        b(i)=1.0
        if(a(i).gt.5.) go to 1
          x=1.+b(i)
          go to 2
   1      x=2.+ b(i)
  10  continue
      go to 3
   2  x=1.
 3    write(6,*) x
      stop
      end
