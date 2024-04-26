      dimension  a(10,10,10,10),b(10,10,10,10),c(10,10,10,10)
      s = 10.0
      do 10 i=1,10
       do 10 j=1,10
        do 10 k=1,10
         do 10 l=1,10
          a(i,j,k,l) = s
          b(i,j,k,l) = s + 1.0
          c(i,j,k,l) = s * 2.0
 10   continue
      do 20 i=2,8
       do 20 j=3,7
        do 20 k=4,7
         do 20 l=2,9
          a(i+1,j+1,k,l) = c(i+2,j,k,l) * b(i+1,j+1,k,l)
          c(i,j,k,l+1) = a(i,j+1,k,l) + b(i,j,k,l)
          b(i,j,k,l) = a(i-1,j+1,k-1,l) / 2.0 + c(i,j,k,l)
 20   continue
      write(6,*) ((((a(i,j,k,l),i=3,4),j=5,6),k=9,10),l=3,4)
      write(6,*) ((((b(i,j,k,l),i=1,2),j=7,8),k=8,9),l=5,6)
      write(6,*) ((((c(i,j,k,l),i=5,6),j=2,3),k=3,4),l=4,5)
      stop
      end
