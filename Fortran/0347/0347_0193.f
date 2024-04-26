      real*8     a(20,20),b(20,20),c(20,20),d(20,20)
      do 10 i=1,20
       s = 1.0
       do 10 j=1,20
         a(i,j) = s
         b(i,j) = s + 1.
         c(i,j) = 21. - s
         d(i,j) = s + 2.
         s = s + 1.0
 10   continue
      do 20 i=2,18,2
       a(i,2) = 4.0
       c(i,20) = a(i,4) * 3.
       n = i
       do 20 j=3,n
         a(i,j) = c(i,j) * d(i,j)
         b(i,j) = a(i,j) / c(i,j)
         d(i,j) = a(i,j) - b(i,j)
 20   continue
      write(6,*) ((a(i,j),i=2,18,2),j=3,19,2)
      write(6,*) ((b(i,j),i=2,18,2),j=3,19,2)
      write(6,*) ((c(i,j),i=2,18,2),j=3,19,2)
      write(6,*) ((d(i,j),i=2,18,2),j=3,19,2)
      stop
      end
