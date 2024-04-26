      real*8 a(10,10,10)
      real*8 d(10)

      a=1
      d=1
c
      do 10 i=a(1,1,1),10
        do 11 l=d(i),10
11        a(:,:,:) = 1
        do 10 j=1,10
         do 10 k=1,10
          a(i,j,k) = a(i,j,k) + 1
10    continue
c
      do 20 i=a(1,1,1),10
        do 21 l=d(i),10
21        a(l,:,:) = 1
        do 20 j=1,10
         do 20 k=1,10
          a(i,j,k) = a(i,j,k) + 1
20    continue
c
      do 30 i=a(1,1,1),10
        do 31 l=d(i),10
31        a(l,l,:) = 1
        do 30 j=1,10
         do 30 k=1,10
          a(i,j,k) = a(i,j,k) + 1
30    continue
c
      do 40 i=a(1,1,1),10
        do 41 l=d(i),10
41        a(l,l,l) = 1
        do 40 j=1,10
         do 40 k=1,10
          a(i,j,k) = a(i,j,k) + 1
40    continue
c
      do 50 i=a(1,1,1),10
        do 51 l=d(i),10
51        a(l,l,l) = 1
        do 50 j=1,10
         do 50 k=1,10
        do 52 l=1,10
52        a(:,:,:) = 1
          a(i,j,k) = a(i,j,k) + 1
50    continue
      print *,a
      end
