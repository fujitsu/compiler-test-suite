      program main
      dimension a(10)

      do 20 j=1,10
  20  a(j)=j

      do 10 i=1,10
        b=i*2.0
        if(a(i)-5) 1,2,3
   1      x=1.
          go to 10
   2      x=2.
  10  continue
      go to 4
   3  x=b
 4    write(6,*) b
      stop
      end
