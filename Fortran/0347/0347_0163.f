      real*8     a(20,20),b(20,20),c(20,20)
      data  s/5.0d0/
      do 10 i=1,20
       do 10 j=1,20
          a(i,j) = s
          b(i,j) = s + 1.0d0
          c(i,j) = 4.0d0
 10   continue
      do 20 i=10,3,-1
        a(i+3,i+2) = b(2*i-3,i+1) * c(11-i,2+i)
        b(i,2*i-1) = a(i,i-1) + c(i+1,15-i)
        c(i+2,20-i) = b(20-i,11-i) + a(i-1,2*i)
 20   continue
      write(6,*) ((a(i,j),i=10,12),j=9,12)
      write(6,*) ((b(i,j),i=5,7),j=6,9)
      write(6,*) ((c(i,j),i=7,9),j=12,15)
      stop
      end
