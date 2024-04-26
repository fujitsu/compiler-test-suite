      program main
      dimension a(10),b(10)
      data b/10*0.0/

      do 20 j=1,10
  20  a(j)=j

      do 10 i=1,10
        b(i)=1.0
        if(a(i)-5) 1,2,3
   1      x=1.
          go to 10
   2      x=2.
  10  continue
   3  x=3
      write(6,*) x
      write(6,*) b
      stop
      end
