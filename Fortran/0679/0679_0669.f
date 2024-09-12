      dimension  a(10,10),b(10,10),c(10,10),d(10,10)
     *           ,e(10,10),f(10,10)
      s = 1.0
      do 10 i=1,10
        do 10 j=1,10
         a(i,j) = s
         b(i,j) = s + 1.0
         c(i,j) = s * 2.0
         d(i,j) = s + 2.0
         e(i,j) = s + 3.0
         f(i,j) = s + 4.0
         s = s + 1.0
 10   continue
      write(6,*) ((a(i,j),i=3,4),j=5,6)
      write(6,*) ((b(i,j),i=1,2),j=7,8)
      write(6,*) ((c(i,j),i=5,6),j=2,3)
      write(6,*) ((d(i,j),i=7,8),j=6,7)
      write(6,*) ((e(i,j),i=1,2),j=7,8)
      write(6,*) ((f(i,j),i=4,5),j=9,10)
      do 20 i=2,8
        c(i,i) = e(i,i) * 2.0
        e(i,i+1) = c(i,1) + 3.0
        do 20 j=3,7
          a(i+1,j+1) = b(i+2,j) * d(i+1,j+1)
          d(i,j) = a(i,j+1) + b(i,j)
 20   continue
      do 30 k=1,6
        do 40 l=5,10
          d(k+2,l) = b(k+1,l) - c(k+1,l) + a(k,l)
          c(k,l-3) = b(k,l) * d(k,l-1) - a(k,l)
 40     continue
        e(k,2) = f(k,8) * 2.0
 30   continue
      stop
      end
