      program main
      integer i
      real*4 a(100)/100*0/,b(100)/100*0/
      do 10  i=1,100
        a(i)=i+0.8
   10 continue
      do 20 i=1,100
        if (i.gt.50) goto 20
        b(i)=aint(a(i))
   20 continue
      write(6,100) (b(i),i=1,100)
  100 format(1h ,5(f7.3,3x))
      stop
      end
