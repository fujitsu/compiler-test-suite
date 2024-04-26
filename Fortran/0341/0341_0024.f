      real*8 a(10,10,10)
      real*8 d(10)

c
      a=1
      d=1
      do 10 i=a(1,1,1),10
      a=1
      d=10
        do 10 j=1,10
         do 10 k=1,10
          a(i,j,k) = a(i,j,k) + 1
10    continue
      do 11 i=a(1,1,1),10
      a=1
      d=10
        do 11 j=a(i,i,i),10
         do 11 k=1,10
          a(i,j,k) = a(i,j,k) + 1
11    continue
      do 12 i=a(1,1,1),10
      a=1
      d=10
        do 12 j=1,10
         do 12 k=a(i,i,i),10
          a(i,j,k) = a(i,j,k) + 1
12    continue
      do 13 i=a(1,1,1),10
      a=1
      d=10
        do 13 j=a(1,1,1),10
         do 13 k=1,10
          a(i,j,k) = a(i,j,k) + 1
13    continue
      do 14 i=a(1,1,1),10
      a=1
      d=10
        do 14 j=1,10
         do 14 k=a(1,1,1),10
          a(i,j,k) = a(i,j,k) + 1
14    continue
c
c
c
      do 110 i=a(1,1,1),10
      a=1
      d=10
        do 110 j=1,10,a(1,1,1)
         do 110 k=1,10
          a(i,j,k) = a(i,j,k) + 1
110    continue
      do 111 i=a(1,1,1),10
      a=1
      d=10
        do 111 j=1,10
         do 111 k=1,10,a(1,1,1)
          a(i,j,k) = a(i,j,k) + 1
111    continue
      do 112 i=a(1,1,1),10
      a=1
      d=10
        do 112 j=1,d(1)
         do 112 k=1,10
          a(i,j,k) = a(i,j,k) + 1
112    continue
      do 113 i=a(1,1,1),10
      a=1
      d=10
        do 113 j=1,10
         do 113 k=1,d(1)
          a(i,j,k) = a(i,j,k) + 1
113    continue
      do 114 i=a(1,1,1),10
      a=1
      d=10
        do 114 j=1,10,d(1)
         do 114 k=1,10
          a(i,j,k) = a(i,j,k) + 1
114    continue
      print *,a
      end
