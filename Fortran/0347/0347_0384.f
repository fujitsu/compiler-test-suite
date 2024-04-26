      real*4 e(10)
      x=0.
      do 10 i=1,10
        e(i)=1.0/i+1.0/(11-i)
   10   if(x.gt.e(i)) x=e(i)
      write(6,*) x
      write(6,*) e
      x=0.
      do 20 i=1,10
        if(x.lt.e(i)) then
          x=e(i)
          j=i
        end if
  20  continue
      write(6,*) x
      write(6,*) j
      stop
      end
