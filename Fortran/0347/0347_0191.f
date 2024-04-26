      real*8     a(20,20),b(20,20),c(20,20),d(20,20)
      s = 1.0
      do 10 i=1,20
        do 10 j=1,20
         a(i,j) = s
         b(i,j) = s + 1.0
         c(i,j) = s * 2.0
         d(i,j) = s + 2.0
         s = s + 1.0
 10   continue
      do 20 i=2,18,2
        do 20 j=3,17
          a(i+1,j+1) = c(i+2,j) * d(i+1,j+1)
          d(i,j) = a(i,j+1) + b(i,j)
          b(i,j) = a(i+1,j) -  c(i,j)
          c(i,j) = (b(i,j) + d(i,j-1)) / 2.0
 20   continue
      do 30 k=1,16,2
        do 40 l=4,14
          d(k,l+2) = b(k,l+1) - c(k,l+2) + a(k,l)
          c(k,l) = b(k,l) * d(k,l-1) - a(k,l)
          a(k,l-1) = d(k,l) + c(k,l-2) / 3.0
          b(k,l) = a(k+1,l+1) - c(k,l) + d(k,l)
 40     continue
 30   continue
      write(6,*) ((a(i,j),i=3,4),j=5,6)
      write(6,*) ((b(i,j),i=1,2),j=7,8)
      write(6,*) ((c(i,j),i=5,6),j=2,3)
      write(6,*) ((d(i,j),i=7,8),j=6,7)
      stop
      end
