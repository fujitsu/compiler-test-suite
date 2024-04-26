      real*8 a(10,10,10),b(10,10,10)
      do 1 i=1,10
      do 1 j=1,10
        a(i,j,:) = i
        b(i,j,:) = j
1     continue

      do 12 i=1,4
      do 12 i1=1,4
      do 12 i2=1,4
      do 12 i3=1,4
        a(i,i1,i2) = a(i,i1,1) + b(i,i1,1) + 1
        do 12 j=1,4
          do 12 k=1,4
            do 12 L1=1,4
              a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
12    continue

      do 13 i=1,4
      do 13 i1=1,4
      do 13 i2=1,4
      do 13 i3=1,4
        a(i,i1,i2) = a(i,i1,1) + b(i,i1,1) + 1
        do 13 j=1,4
          do 13 k=1,4
            do 13 L1=1,4
              do 13 L2=1,4
                a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
13    continue

      do 14 i=1,4
      do 14 i1=1,4
      do 14 i2=1,4
      do 14 i3=1,4
        a(i,i1,i2) = a(i,i1,1) + b(i,i1,1) + 1
        do 14 j=1,4
          do 14 k=1,4
            do 14 L1=1,4
              do 14 L2=1,4
                do 14 L3=1,4
                  a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
14    continue
      print *,a
      end
