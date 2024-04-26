      program main
      dimension a(10),b(10)
      data b/10*0.0/
      do 20 j=1,10
  20  a(j)=j

      do 10 i=1,10
        ss=1.0
        if(b(i).eq.-1.) go to 10
        if(a(i)-5) 1,2,3
   1      x=1.
          go to 10
   2      x=2.
          go to 5
   3      x=3
  10  continue
   5  continue
 600  write(6,*) x
      write(6,*) b
      stop
      end
