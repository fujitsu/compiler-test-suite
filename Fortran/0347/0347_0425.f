      program main
      dimension a(10)
      do 20 j= 1,10
  20  a(j)=j
      do 10 i=1,10
        if(a(i)-5) 1,2,3
   1    if(a(i)-5) 2,3,4
   2      x=2.
          go to 10
   3      x=3.
  10  continue
   4  x=4.
 600  write(6,*) x
      stop
      end
