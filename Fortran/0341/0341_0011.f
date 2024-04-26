      real*8 a(20,20,20),b(20,20,20)
      do 1 i=1,20
      do 1 j=1,20
        a(i,j,:) = i
        b(i,j,:) = j
1     continue

      do 10 i=1,10
        do 10 j=1,10
          do 10 k=1,10
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
10    continue
      do 11 i=1,10
        do 11 j=1,10
          do 11 k=1,10
            a(i,j,k) = a(i+1,j,k) + b(i,j,k) + 1
11    continue
      do 12 i=1,10
        do 12 j=1,10
          do 12 k=1,10
            a(i,j,k) = a(i+1,j+1,k) + b(i,j,k) + 1
12    continue
      do 13 i=1,10
        do 13 j=1,10
          do 13 k=1,10
            a(i,j,k) = a(i+1,j+1,k+1) + b(i,j,k) + 1
13    continue
c
c
c
      do 14 i=1,10
        do 14 j=1,10
          do 14 k=1,10
            a(i,j,k) = a(i,j,k) + b(i+1,j,k) + 1
14    continue
      do 15 i=1,10
        do 15 j=1,10
          do 15 k=1,10
            a(i,j,k) = a(i,j,k) + b(i+1,j,k) + 1
15    continue
      do 16 i=1,10
        do 16 j=1,10
          do 16 k=1,10
            a(i,j,k) = a(i,j,k) + b(i+1,j+1,k+1) + 1
16    continue
      do 17 i=1,10
        do 17 j=1,10
          do 17 k=1,10
            a(i,j,k) = a(i,j,k) + b(i+1,j+1,k+1) + 1
17    continue
      do 111 i=1,10
        do 111 j=1,10
          do 111 k=1,10
            a(i,j,k) = a(i,j,k+1) + b(i,j,k) + 1
111    continue
      do 112 i=1,10
        do 112 j=1,10
          do 112 k=1,10
            a(i,j,k) = a(i,j+1,k+1) + b(i,j,k) + 1
112    continue
      do 113 i=1,10
        do 113 j=1,10
          do 113 k=1,10
            a(i,j,k) = a(i,j+1,k) + b(i,j,k) + 1
113    continue
      print *,a
      end
