      program main
      dimension a(10),b(10)
      data b/10*0.0/

      do 20 j=1,10
  20  a(j)=j

      do 10 i=1,10
      if(a(i).lt.5.) then
        b(i)=1.0
        if(a(i)-2) 1,2,3
   1      x=1.
          go to 10
   2      x=2.
          go to 4
   3      x=3
      else
        x=0.
        b(i)=-1.
      endif
  10  continue
   4  continue
 600  write(6,*) x
      write(6,*) b
      stop
      end
