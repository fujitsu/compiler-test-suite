      complex*16    a(10,10),b(10,10),c(10,10),abc(10,10)
      real*8        r1(10)/5*1.,5*2./
      real*8        r2(10)/5*2.,5*3./
      integer*4     x(10)/10*50/,s/1/
      integer*4     y(10)/5*10,5*100/
      common /ssu/a,b,c

      do 1 j=1,10
       do 1 i=1,10
        a(i,j) = (0,0)
        b(i,j) = (1.,1.)
        c(i,j) = (1.,2.)+i
    1 continue

      write(6,99) a
      write(6,99) b
      write(6,99) c
 99   format(10f8.3)
      stop
      end
