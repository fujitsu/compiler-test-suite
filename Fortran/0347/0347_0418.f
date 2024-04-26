      program main
      dimension a(10)
      do 20 j=1,10
  20  a(j)=j
      do 10 i=1,10
        if(i-5) 1,2,3
   1    if(a(i).gt.7.) go to 4
   2      x=2.
          go to 10
   3      x=3.
  10  continue
      go to 600
   4  x=5.
 600  write(6,*) x
      stop
      end
