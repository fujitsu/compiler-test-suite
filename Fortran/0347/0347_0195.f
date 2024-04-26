      real*8     a(30),b(30),c(30),d(30)
      data   a/30*2.024/,b/30*3.04/,c/30*4.048/,d/30*2.024/
       do 10 i=2,15
         a(i) = b(i) + c(i) + d(i)
         do 20 j=16,30
           d(j) = (a(j) - c(j)) / b(j)
           b(j) = d(j) / 2.0 * c(j)
           c(j) = a(j) + d(j) / 2.0
  20     continue
         b(i-1) = a(i-1) * c(i) - d(i)
  10   continue
      write(6,*) (a(i),i=10,20)
      write(6,*) (b(i),i=10,20)
      write(6,*) (c(i),i=10,20)
      write(6,*) (d(i),i=10,20)
      stop
      end
