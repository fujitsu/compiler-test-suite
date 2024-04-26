      real a(13,13,13)
      real b(13,13,13)
      do 1 i=1,13
      do 1 j=1,13
      b(i,:,j) = i
1     a(i,:,j) = j
c
      do 10 i=1,10
      do 10 j=1,10
      do 10 k=1,10
        a(i,j,k) = b(i,j,k) + 1
        b(i,j,k) = a(i,j,k) + 1
10    continue
c
      do 20 i=1,10
      do 20 j=1,10
      do 20 k=1,10
        a(i,j,k) = b(k,j,i) + 1
        b(i,j,k) = a(k,j,i) + 1
20    continue

      do 30 i=1,10
      do 30 j=1,10
      do 30 k=1,10
        a(i,1,1) = b(1,1,i) + 1
        b(1,j,1) = a(1,j,1) + 1
30    continue
      print '(f11.8)',a
      end
