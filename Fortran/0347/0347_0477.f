      program main
      dimension a(11),b(10)
      data b/10*0.0/

      do 20 j=1,11
  20    a(j)=j

      do 10 i=1,10
        if(a(i).gt.5) then
          x=2.1
          go to 1
        else
          x=1.2
        endif
        a(i+1)=x+b(i)
        xx=x*x
  10  continue
 1    write(6,*) x,xx
      write(6,*) b
      stop
      end
