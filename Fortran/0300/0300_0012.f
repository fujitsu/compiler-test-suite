      real*8 a(10,10,10),b(10,10,10)
      do 1 i=1,10
      do 1 j=1,10
        a(i,j,:) = i
        b(i,j,:) = j
1     continue

c
      do 10 i=1,4
      do 10 i1=1,4
      do 10 i2=1,4
      do 10 i3=1,4
      do 10 i4=1,4
      do 10 i5=1,4
        a(i,i1,i2) = a(i,i1,1) + b(i,i1,1) + 1
        do 10 j=1,4
          a(j,j,j) = a(j,j,j) + b(j,j,j) + 1
10    continue

      print *,a
      end
