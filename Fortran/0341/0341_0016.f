      real*8 a(-10:20,-10:20,-10:20),b(-10:20,-10:20,-10:20)
      do 1 i=-10,20
      do 1 j=-10,20
      do 1 k=-10,20
        a(i,j,k) = i
        b(i,j,k) = j
1     continue
      m=1

      do 10 i=1,10,1
        do 10 j=1,10,2
          do 10 k=1,10,1
            a(i,j,k) = a(i+1,j,k) + b(i,j,k) + 1
10    continue

      do 11 i=1,10,1
        do 11 j=1,10,2
          do 11 k=1,10,1
            a(i,j,k) = a(i+1,j,k+1) + b(i,j,k) + 1
11    continue

      do 12 i=1,10,1
        do 12 j=1,10,2
          do 12 k=1,10,1
            a(i,j,k) = a(i+1,j,k-1) + b(i,j,k) + 1
12    continue

      do 13 i=1,10,1
        do 13 j=1,10,2
          do 13 k=1,10,1
            a(i,j,m) = a(i+1,j,m) + b(i,j,k) + 1
13    continue

      do 14 i=1,10,1
        do 14 j=1,10,2
          do 14 k=1,10,1
            a(i,j,k+i) = a(i+1,j,k+i) + b(i,j,k) + 1
14    continue

      do 20 i=1,10,1
        do 20 j=1,10,2
          do 20 k=1,10,1
            a(i,j,k) = a(i+1,j+1,k) + b(i,j,k) + 1
20    continue

      do 21 i=1,10,1
        do 21 j=1,10,2
          do 21 k=1,10,1
            a(i,j,k) = a(i+1,j+1,k+1) + b(i,j,k) + 1
21    continue

      do 22 i=1,10,1
        do 22 j=1,10,2
          do 22 k=1,10,1
            a(i,j,k) = a(i+1,j+1,k-1) + b(i,j,k) + 1
22    continue

      do 23 i=1,10,1
        do 23 j=1,10,2
          do 23 k=1,10,1
            a(i,j,m) = a(i+1,j+1,m) + b(i,j,k) + 1
23    continue

      do 24 i=1,10,1
        do 24 j=1,10,2
          do 24 k=1,10,1
            a(i,j,k+i) = a(i+1,j+1,k+i) + b(i,j,k) + 1
24    continue

      do 30 i=1,10,1
        do 30 j=1,10,2
          do 30 k=1,10,1
            a(i,j,k) = a(i+1,j-1,k) + b(i,j,k) + 1
30    continue

      do 31 i=1,10,1
        do 31 j=1,10,2
          do 31 k=1,10,1
            a(i,j,k) = a(i+1,j-1,k+1) + b(i,j,k) + 1
31    continue

      do 32 i=1,10,1
        do 32 j=1,10,2
          do 32 k=1,10,1
            a(i,j,k) = a(i+1,j-1,k-1) + b(i,j,k) + 1
32    continue

      do 33 i=1,10,1
        do 33 j=1,10,2
          do 33 k=1,10,1
            a(i,j,m) = a(i+1,j-1,m) + b(i,j,k) + 1
33    continue

      do 34 i=1,10,1
        do 34 j=1,10,2
          do 34 k=1,10,1
            a(i,j,k+i) = a(i+1,j-1,k+i) + b(i,j,k) + 1
34    continue

      do 40 i=1,10,1
        do 40 j=1,10,2
          do 40 k=1,10,1
            a(i,j,k) = a(i+1,m,k) + b(i,j,k) + 1
40    continue

      do 41 i=1,10,1
        do 41 j=1,10,2
          do 41 k=1,10,1
            a(i,j,k) = a(i+1,m,k+1) + b(i,j,k) + 1
41    continue

      do 42 i=1,10,1
        do 42 j=1,10,2
          do 42 k=1,10,1
            a(i,j,k) = a(i+1,m,k-1) + b(i,j,k) + 1
42    continue

      do 43 i=1,10,1
        do 43 j=1,10,2
          do 43 k=1,10,1
            a(i,j,m) = a(i+1,m,m) + b(i,j,k) + 1
43    continue

      do 44 i=1,10,1
        do 44 j=1,10,2
          do 44 k=1,10,1
            a(i,j,k+i) = a(i+1,m,k+i) + b(i,j,k) + 1
44    continue

      do 50 i=1,10,1
        do 50 j=1,10,2
          do 50 k=1,10,1
            a(i,j,k) = a(i+1,j+k,k) + b(i,j,k) + 1
50    continue

      do 51 i=1,10,1
        do 51 j=1,10,2
          do 51 k=1,10,1
            a(i,j,k) = a(i+1,j+k,k+1) + b(i,j,k) + 1
51    continue

      do 52 i=1,10,1
        do 52 j=1,10,2
          do 52 k=1,10,1
            a(i,j,k) = a(i+1,j+k,k-1) + b(i,j,k) + 1
52    continue

      do 53 i=1,10,1
        do 53 j=1,10,2
          do 53 k=1,10,1
            a(i,j,m) = a(i+1,j+k,m) + b(i,j,k) + 1
53    continue

      do 54 i=1,10,1
        do 54 j=1,10,2
          do 54 k=1,10,1
            a(i,j,k+i) = a(i+1,j+k,k+i) + b(i,j,k) + 1
54    continue
      print *,a
      end
