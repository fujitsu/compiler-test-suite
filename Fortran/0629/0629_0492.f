      implicit  real*8(a-h)
      data   dx/1.d0/
      call  sub(dx)
      write(6,*) ' dx= ',dx
      stop
      end

      subroutine  sub(dx)
      implicit  real*8(a-h)
      real*8 a(10)
      do 10 i=1,10
        dx = i
        do 100 j=1,10
           a(j) = dx
 100     continue
 10     continue
      write(6,1) a(1)
1     format(f5.2)
      return
      end
