      program main
      dimension a(10),b(10)
      data b/10*0.0/

      do 20 j=1,10
  20    a(j)=j

      do 10 i=1,10
        b(i)=1.0
        if(a(i).gt.5) then
          x=2.1
          go to 1
        else
          x=1.2
        endif
        xx=x*x
  10  continue
      go to 3
   1  xx=x*x
 3    write(6,*) x,xx
      write(6,*) b
      stop
      end
