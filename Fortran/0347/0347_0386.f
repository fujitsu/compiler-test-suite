      real*4 e1(10),e2(10)
      j=0
      x=0.
      do 10 i=1,10
        e1(i)=1.0/i+1.0/(11-i)
        e2(i)=i
   10   if(x.le.e1(i)) x=e2(i)
      write(6,*) x
      write(6,*) e1
      write(6,*) e2
      x=0.
      do 20 i=1,10
        e1(i)=1.0/i+1.0/(11-i)
        dif = x-e1(i)
        e1(i)=i
        if(dif.gt.0.d1) then
          x=e1(i)
          j=i
        end if
  20  continue
      write(6,*) x
      write(6,*) j
      stop
      end
