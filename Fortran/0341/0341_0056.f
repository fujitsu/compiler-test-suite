      real*8 a(10,10,10),b(10,10,10)
      do 1 i=1,10
      do 1 j=1,10
        a(i,j,:) = i
        b(i,j,:) = j
1     continue

      do 10 i=1,3
      do 10 i1=1,3
      do 10 i2=1,3
      do 10 i3=1,3
      do 10 i4=1,3
      do 10 i5=1,3
      do 10 i6=1,3
      do 10 i7=1,3
        a(i,i1,i2) = a(i,i1,1) + b(i,i1,1) + 1
        do 10 j=1,3
          a(j,j,j) = a(j,j,j) + b(j,j,j) + 1
10    continue

      do 11 i=1,3
      do 11 i1=1,3
      do 11 i2=1,3
      do 11 i3=1,3
      do 11 i4=1,3
      do 11 i5=1,3
      do 11 i6=1,3
      do 11 i7=1,3
        a(i,i1,i2) = a(i,i1,1) + b(i,i1,1) + 1
        do 11 j=1,3
          do 11 k=1,3
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
11    continue
      print *,a
      end
