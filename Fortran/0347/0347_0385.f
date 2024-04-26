      real*4 e(10)
      x=0.
      do 10 i=1,10
        e(i)=1.0/i+1.0/(11-i)
        dif = e(i)-x
        if(dif) 10,15,15
   15    x=e(i)
   10 continue
      write(6,*) x
      write(6,*) e
      x=0.
      j=99
      do 20 i=1,10
        dif=x-e(i)
        if(0.lt.dif) then
          x=e(i)
          j=i
        end if
  20  continue
      write(6,*) x
      write(6,*) j
      stop
      end
