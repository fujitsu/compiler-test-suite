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

      do 20 i=1,10
        do 20 j=1,10
          do 20 k=1,10
            a(i,j,k) = a(i,j,k+1) + b(i,j,k) + 1
20    continue

      do 30 i=1,10
        do 30 j=1,10
          do 30 k=1,10
            a(i,j,k) = a(i,j+1,k) + b(i,j,k) + 1
30    continue

      do 40 i=1,10
        do 40 j=1,10
          do 40 k=1,10
            a(i,j,k) = a(i,j+1,k+1) + b(i,j,k) + 1
40    continue

      do 50 i=1,10
        do 50 j=1,10
          do 50 k=1,10
            a(i,j,k) = a(i+1,j,k) + b(i,j,k) + 1
50    continue

      do 60 i=1,10
        do 60 j=1,10
          do 60 k=1,10
            a(i,j,k) = a(i+1,j,k+1) + b(i,j,k) + 1
60    continue

      do 70 i=1,10
        do 70 j=1,10
          do 70 k=1,10
            a(i,j,k) = a(i+1,j+1,k) + b(i,j,k) + 1
70    continue

      do 80 i=1,10
        do 80 j=1,10
          do 80 k=1,10
            a(i,j,k) = a(i+1,j+1,k+1) + b(i,j,k) + 1
80    continue

      do 110 i=1,10
        do 110 j=1,10
          do 110 k=1,10
            a(i,j,k) = 1
110    continue

      do 120 i=1,10
        do 120 j=1,10
          do 120 k=1,10
            a(i,j,k) = a(i,j,1) + b(i,j,k) + 1
120    continue

      do 130 i=1,10
        do 130 j=1,10
          do 130 k=1,10
            a(i,j,k) = a(i,1,k) + b(i,j,k) + 1
130    continue

      do 140 i=1,10
        do 140 j=1,10
          do 140 k=1,10
            a(i,j,k) = a(i,1,1) + b(i,j,k) + 1
140    continue

      do 150 i=1,10
        do 150 j=1,10
          do 150 k=1,10
            a(i,j,k) = a(1,j,k) + b(i,j,k) + 1
150    continue

      do 160 i=1,10
        do 160 j=1,10
          do 160 k=1,10
            a(i,j,k) = a(1,j,1) + b(i,j,k) + 1
160    continue

      do 170 i=1,10
        do 170 j=1,10
          do 170 k=1,10
            a(i,j,k) = a(1,1,k) + b(i,j,k) + 1
170    continue

      do 180 i=1,10
        do 180 j=1,10
          do 180 k=1,10
            a(i,j,k) = a(1,1,1) + b(i,j,k) + 1
180    continue
      print *,a
      end
