      dimension  a(20,20),b(20,20),c(20,20)
      data a/400*1.0/
      data b/400*1.0/
      data c/400*1.0/
      s = 1.0
      do 10 i=1,10
       do 10 j=1,10
          a(i,j) = 2.0
          b(i,j) = 3.0
          c(i,j) = 4.0
 10   continue
      do 20 i=5,10
        a(i-1,i) = b(i+2,i+1) * c(11-i,5+i)
        b(i,i+1) = a(i,2*i-1) + c(i+1,15-i)
        c(i-2,20-i) = b(20-i,20-i) + a(2*i-1,i)
 20   continue
      write(6,*) ((a(i,j),i=3,4),j=12,14)
      write(6,*) ((b(i,j),i=6,7),j=5,7)
      write(6,*) ((c(i,j),i=2,3),j=15,16)
      stop
      end
