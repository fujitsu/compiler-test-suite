      program main
      dimension a(10),b(10)
      data b/10*1.0/

      do 20 j=1,10
  20  a(j)= j

      x=0.0
      do 10 i=1,10
        if(a(i).gt.5.) then
        if(b(i).eq.0.) go to 2
          x=1.
        end if
  10  continue
 2     write(6,*) a,b
      write(6,*) x
      stop
      end
