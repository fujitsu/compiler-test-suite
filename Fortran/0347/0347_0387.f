      real*4 e(10)
      real*8 d(10)
      x=100.
      y=-100.
      do 10 i=1,10
        e(i)=i*(11-i)
        d(i)=e(i)*10.
        if(x.gt.e(i)) then
          x=e(i)
        else
          y=e(i)
        endif
   10 continue
      write(6,*) x
      write(6,*) y
      write(6,*) e
      x=0.
      do 20 i=1,10
        if(x.lt.e(i)) then
          x=e(i)
          d(i+1)=e(i)
        end if
  20  continue
      write(6,*) x
      write(6,*) d
      stop
      end
