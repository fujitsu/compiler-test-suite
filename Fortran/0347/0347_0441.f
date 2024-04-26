      program main
      dimension a(10)

      do 20 j=1,10
  20  a(j)=j

      do 10 i=1,10
        if(a(i)-2) 1,2,3
   1      x=5.
          go to 5
   2      x=2.
          go to 4
   3      x=2
   5      a(i+1)=x
  10  continue
   4  x=4.
      write(6,*) a
      stop
      end
