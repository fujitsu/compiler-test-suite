      integer*4 a(20)
      do 10 i=1,20
        a(i)=i*2
  10  continue
      a(11)=41
      a(18)=41
      imax =0
      idx=0
      do 20 i=1,20
        if (imax.le.a(i)) then
          imax=a(i)
          idx=i
        endif
  20  continue
      write(6,*) ' imax= ',imax
      write(6,*) ' idx= ',idx
      imax=0
      idx=1
      do 30 i=1,20
        if (a(idx).le.a(i)) then
          imax=a(i)
          idx=i
        endif
  30  continue
      write(6,*) ' imax= ',imax
      write(6,*) ' idx= ',idx
      stop
      end
