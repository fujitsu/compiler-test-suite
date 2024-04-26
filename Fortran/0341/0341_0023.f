      real*8 a(10,10,10)
      real*8 d(10)

      a=1
      d=10
c
      do 10 i=a(1,1,1),10
        do 10 j=1,10
         do 10 k=1,10
          a(i,j,k) = a(i,j,k) + 1
10    continue
      do 11 i=1,10
        do 11 j=a(1,1,1),10
         do 11 k=1,10
          a(i,j,k) = a(i,j,k) + 1
11    continue
      do 12 i=1,10
        do 12 j=1,10
         do 12 k=a(1,1,1),10
          a(i,j,k) = a(i,j,k) + 1
12    continue
c
c
c
      do 13 i=1,d(1)
        do 13 j=1,10
         do 13 k=1,10
          a(i,j,k) = a(i,j,k) + 1
13    continue
      do 14 i=1,10
        do 14 j=1,d(1)
         do 14 k=1,10
          a(i,j,k) = a(i,j,k) + 1
14    continue
      do 15 i=1,10
        do 15 j=1,10
         do 15 k=1,d(1)
          a(i,j,k) = a(i,j,k) + 1
15    continue
c
c
c
      do 16 i=1,10,a(1,1,1)
        do 16 j=1,10
         do 16 k=1,10
          a(i,j,k) = a(i,j,k) + 1
16    continue
      do 17 i=1,10
        do 17 j=1,10,a(1,1,1)
         do 17 k=1,10
          a(i,j,k) = a(i,j,k) + 1
17    continue
      do 18 i=1,10
        do 18 j=1,10
         do 18 k=1,10,a(1,1,1)
          a(i,j,k) = a(i,j,k) + 1
18    continue
      print *,a
      end
