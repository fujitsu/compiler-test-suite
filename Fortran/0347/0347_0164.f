      dimension  a(10,10),b(10,10),c(10,10)
      do 10 i=1,10
        do 10 k=1,10
          a(i,k) = 2.0
          b(i,k) = 4.0
          c(i,k) = 5.0
 10   continue
      do 20 i=3,7
        a(i,i+1)  = b(i,i) - c(i,i)
        b(i,i+2) = a(i,i) + c(10-i,10-i)
 20   continue
      write(6,*) ((a(i,j),i=5,7),j=4,7)
      write(6,*) ((b(i,j),i=4,6),j=6,9)
      stop
      end
