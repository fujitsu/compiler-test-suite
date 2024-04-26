      real*8 a(10,10,10),b(10,10,10)
      do 1 i=1,10
        a(i,:,:) = i
        b(i,:,:) = i+1
1     continue

      do 10 i=1,10
        a(1,1,1) = i
        do 10 j=1,10
          b(1,1,1) = j
          do 10 k=1,10
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
10    continue
      do 11 i=1,10
        a(1,1,1) = i
        do 11 j=1,10
            a(i,j,1) = a(i,j,1) + b(i,j,1) + 1
11    continue
      do 12 i=1,10
            a(i,1,2) = a(i,1,2) + b(i,1,2) + 1
12    continue
      do 13 i=1,10
        a(1,1,1) = i
        do 13 j=1,10
          do 13 k=1,10
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
13    continue
      do 14 i=1,10
        do 14 j=1,10
          b(1,1,1) = j
          do 14 k=1,10
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
14    continue
      do 114 i=1,10
        do 114 j=1,10
          a(i,j,1) = a(i,j,1) + b(i,j,1) + 1
          do 114 k=1,10
            b(1,1,1) = k
114    continue
      do 15 i=1,10
        a(i,1,1) = a(i,1,1) + b(i,1,1) + 1
        do 15 j=1,10
          do 15 k=1,10
            b(1,1,1) = k
15    continue
      do 16 i0=1,10
        a(1,1,1) = i0
        do 16 i=1,10
        do 16 j=1,10
          b(1,1,1) = j
          do 16 k=1,10
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
16    continue
      do 17 i0=1,10
        a(1,1,i0) = i0
        do 17 i=1,10
        do 17 j=1,10
          a(i,j,1) = a(i,j,1) + b(i,j,1) + 1
          do 17 k=1,10
            b(1,1,1) = j
17    continue
      do 18 i0=1,10
        a(1,1,1) = a(1,1,1) + i0
        do 18 i=1,10
        do 18 j=1,10
          a(i,j,i0) = a(i,j,i0) + b(i,j,i0) + 1
          do 18 k=1,10
            b(1,1,1) = j
18    continue
      do 19 i0=1,10
        a(1,i0,1) = a(i0,1,1) + i0
        do 19 i=1,10
        do 19 j=1,10
        do 19 k=1,10
          a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
          do 19 k0=1,10
            b(1,1,1) = k0
19    continue
      do 20 i0=1,10
      do 20 i1=1,10
        a(i0,i1,1) = a(i0,i1,1) + i
        do 20 i=1,10
        do 20 j=1,10
        do 20 k=1,10
          a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
          do 20 k0=1,10
          do 20 k1=1,10
            b(k0,k1,1) = b(k0,k1,2) + 1
20    continue
      print *,a
      end
