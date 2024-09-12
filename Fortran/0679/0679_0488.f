      real*8 a(250),b(100)
      integer*4 n,m
      data a/50*1,50*2,50*3,50*4,50*5/,b/100*3./
      data n/50/,m/150/
      do 100 i=1,100
        a(i+m) = a(i+n) + b(i)
 100  continue
      write(6,*) a
      stop
      end
