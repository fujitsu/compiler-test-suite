      real*8    a(20,20),b(20,20),c(20,20)
      data      a/400*2.024d0/,b/400*3.04d0/,c/400*4.02d0/
      do 10 i=2,16
        do 10 j=2,9
          a(i,j*2) = b(i,j) + c(i,j*2)
          b(j+1,i) = c(i,j*2) + a(2*j,i)
          c(j*2,i) = a(i,j) * b(i,j+1)
 10   continue
      write(6,*) ((a(i,j),i=2,7),j=4,9)
      write(6,*) ((b(i,j),i=2,6),j=3,8)
      write(6,*) ((c(i,j),i=2,6),j=2,7)
      stop
      end
