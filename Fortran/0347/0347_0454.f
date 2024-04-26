      program main
      dimension a(10),b(10)
      data b/10*.0/

      do 20 j=1,10
  20    a(j)=1.0

      do 10 i=1,10
        b(i)=1.0
        if(a(i).gt.5.) go to 1
        if(a(i).gt.3.) go to 2
          x=3.+b(i)
          go to 10
   1      x=1.+b(i)
  10  continue
      go to 3
   2  x=2.
 3    write(6,*) x
      stop
      end
