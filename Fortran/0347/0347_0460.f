      program main
      dimension a(10),b(11)
      data b/11*2.0/

      do 20 j=1,10
  20    a(j)=j

      do 10 i=1,10
        if(b(i).gt.a(i)) go to 1
        x=1.
        go to 3
   1    b(i+1)=6.2
        x=2.
  10  continue
 3    write(6,*) x
      write(6,*) b
      stop
      end
