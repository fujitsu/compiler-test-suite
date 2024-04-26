      program main
      dimension a(10)

      do 20 j=1,10
  20  a(j)=j

      n=4
      do 10 i=1,10
        if(n-5) 1,2,3
   1      x=1.
          go to 4
   2      x=2.
   4      n=a(i)
  10  continue
   3  x=3
      write(6,*) a
      stop
      end
