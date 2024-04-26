      dimension  a(20,20),b(20,20),c(20,20)
      s = 1.0
      do 10 i=1,20
       do 10 j=1,20
          a(i,j) = 2.0
          b(i,j) = 3.0
          c(i,j) = 4.0
 10   continue
      do 20 i=5,10
        a(i,i) = b(i,i+1) + c(11-i,5+i)
        b(i,i) = a(i,i) + c(i+1,15-i)
        c(i-2,20-i) = b(20-i,20-i)
 20   continue
      write(6,600) ((a(i,j),i=1,2),j=12,14)
      write(6,600) ((b(i,j),i=3,4),j=5,7)
      write(6,600) ((c(i,j),i=10,11),j=3,5)
 600  format(1x,3(2f10.3,2x))
      stop
      end
