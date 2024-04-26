      real*8  a(20,20),b(20,20),c(20,20)
      integer*4  il(20)
      data   a/400*2.d0/,b/400*3.d0/,c/400*4.d0/
      do 10 i=2,20
  10    il(i) = 21 - i
      do 25 i=1,20
        do 20 j=2,20
          a(i,j) = b(i,j) + c(i,j)
          ip = il(j)
          b(ip,j) = a(ip,j-1) * 2.d0 + c(i,j)
  20    continue
  25  continue
      write(6,*) a
      write(6,*) b
      stop
      end
