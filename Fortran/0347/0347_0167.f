      real*8    a(10,10),b(10,10),c(10,10)
      data      a/100*2.024/,b/100*3.04/,c/100*4.02/
      do 10 i=1,10
        do 10 j=1,10
          a(i,j) = b(i,j) + c(i,j)
          b(j,i) = c(i,j) + a(j,i)
 10   continue
      write(6,*) ((a(i,j),i=2,7),j=4,9)
      write(6,*) ((b(i,j),i=2,6),j=3,8)
      write(6,*) ((c(i,j),i=2,6),j=2,7)
      stop
      end
