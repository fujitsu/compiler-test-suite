      real*4 a(50),b(50),c(50),d(50)
      equivalence  (a(1),b(2)),(c(50),d(1))
      data  a,c/50*1.,50*2./
      do 10 i=1,50,2
        b(i)=float(i)
        d(i)=float(51-i)
  10  continue
      a(1)=100.
      a(50)=100.
      b(50)=101.
      c(50)=2.0
      d(50)=100.
      c(10)=101.
      idx=1
      do 20 i=1,50
        if (a(i).gt.b(idx)) then
          idx=i
        endif
  20  continue
      write(6,*) ' idx=',idx
      idx=1
      do 30 i=1,50
        if (c(i).gt.d(idx)) then
          idx=i
        endif
  30  continue
      write(6,*) ' idx=',idx
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
