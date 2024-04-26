      dimension   a(20,20),b(20,20),c(20,20)
      data a,b,c/1200*0/
      do 10 i=1,10
       do 10 j=1,10
         a(i,j) = 1.0
         b(i,j) = a(i,j) + 2.0
         c(i,j) = a(i,j) * 2.0
 10   continue
      do 20 i=5,10
        a(1,2*i-1) = b(i+1,5) * c(21-2*i,i)
        b(3,2*i-3) = c(i,10) / a(i-1,10)
        c(15-i,5)  = a(i,i) - b(i,i)
 20   continue
      write(6,*)   ((a(i,j),i=7,9),j=1,2)
      write(6,*)   ((b(i,j),i=2,4),j=2,3)
      write(6,*)   ((c(i,j),i=1,3),j=4,5)
      do 30 k=2,7
        a(2*k+1,10) = b(10-k,5) + c(11,k+5)
        b(3,3*k-2) = c(k-1,10) * 2.0
        c(2*k+3,1) = b(k+1,3) + a(20-k,7)
        a(15,k+2)  = c(k,3) - b(10-k,10)
 30   continue
      write(6,*) ((a(i,j),i=5,7),j=3,4)
      write(6,*) ((b(i,j),i=2,4),j=1,2)
      write(6,*) ((c(i,j),i=6,8),j=6,7)
      stop
      end
