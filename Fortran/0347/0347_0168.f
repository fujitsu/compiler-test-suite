      real*8    a(20,20),b(20,20),c(20,20)
      data      a/400*2.024/,b/400*3.04/,c/400*4.02/
      do 10 i=3,16
        do 10 j=3,16
          a(i,j+1) = b(i,j) + c(i,j+2)
          b(j,i) = c(i,j) + a(j,i-1)
          c(j,i) = a(i,j) * c(i,j)
 10   continue
      write(6,*) ((a(i,j),i=2,7),j=4,9)
      write(6,*) ((b(i,j),i=2,6),j=3,8)
      write(6,*) ((c(i,j),i=2,6),j=2,7)
      stop
      end
