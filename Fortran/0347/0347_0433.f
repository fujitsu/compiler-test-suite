      program main
      dimension a(10),b(10)
      data b/10*0.0/

      do 20 j=1,10
  20  a(j)=j

      do 10 i=1,10
         b(i)=1.0
        if(a(i)-5) 1,2,3
   1    if(a(i)-7) 2,3,4
   2      x=2.
          go to 10
   3      x=3.
  10  continue
   4  x=4.
      write(6,*) x
      stop
      end
