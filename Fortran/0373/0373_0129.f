      implicit  real*8(a-h)
      common /blk1/ a(10,10),b(10,10),c(10,10)
      common /blk2/ d1(10,10,10),d2(10,10,10)
      data   dx,dy/1.d0,2.d0/

      do 10 i=1,10
       do 10 j=1,10
         a(i,j) = dx
         b(i,j) = dy
         c(i,j) = float(i)*dy
 10     continue
      dx = c(2,1)
c
      write(6,*) a,b,c
      stop
      end
