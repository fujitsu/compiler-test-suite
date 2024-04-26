      dimension  a(10,10,10),b(10,10,10),c(10,10,10)
      s = 1.0
      do 10 i=1,10
       do 10 j=1,10
        do 10 k=1,10
         a(i,j,k) = s
         b(i,j,k) = s + 1.0
         c(i,j,k) = s * 2.0
         if (s.gt.50) s=1.0
         s = s + 1.0
 10   continue
      do 20 i=2,8
       do 20 j=3,7
        do 20 k=3,7
          a(i+1,j+1,k) = c(i+2,j,k) * b(i+1,j+1,k)
          c(i,j,k) = a(i,j+1,k) + b(i,j,k)
 20   continue
      write(6,*) (((a(i,j,k),i=3,4),j=5,6),k=9,10)
      write(6,*) (((b(i,j,k),i=1,2),j=7,8),k=8,9)
      write(6,*) (((c(i,j,k),i=5,6),j=2,3),k=3,4)
      stop
      end
