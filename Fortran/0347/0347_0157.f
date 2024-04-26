      dimension  a(20,21),b(21,20),c(20,20)
      a(:,21) = 0
      b(21,:) = 0
      do 10 i=1,20
       do 10 j=1,20
        a(i,j) = 1.1
        b(i,j) = 2.2
        c(i,j) = 3.3
 10   continue
      do 20 i=4,10
        a(i,i) = b(2*i+1,i) * c(i-1,i-3)
        b(i,i) = c(i,i) - a(2*i,20-i)
        c(i,i) = b(i+5,i-1) + a(2*i,2*i+1)
 20   continue
      write(6,*) ((a(i,j),i=4,10),j=4,10)
      write(6,*) ((b(i,j),i=4,10),j=4,10)
      write(6,*) ((c(i,j),i=4,10),j=4,10)
      stop
      end
