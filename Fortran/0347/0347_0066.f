      dimension a(10,10,10),b(10,10,10),c(10,10,10)
      do 10 i=1,10
       do 10 j=1,10
        do 10 k=1,10
          a(i,j,k) = 1.0
          b(i,j,k) = a(i,j,k) + 1.0
          c(i,j,k) = b(i,j,k) * 2.0
  10  continue
      do 20 i=1,5
        do 20 j=1,5
         do 20 k=2,8
          a(i,j,k+1) = a(i+1,j+1,k)+b(i,j,k+2)
          b(i,j,k) = c(i,j,k+1) * a(i,j,k-1)
  20  continue
      write(6,*) (((a(i,j,k),i=2,4),j=2,5),k=2,5)
      write(6,*) (((b(i,j,k),i=2,4),j=2,5),k=2,5)
      write(6,*) (((c(i,j,k),i=2,4),j=2,5),k=3,6)
      stop
      end
