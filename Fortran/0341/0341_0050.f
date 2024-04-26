      real*8 a(10,10,10),b(10,10,10)
      do 1 i=1,10
      do 1 j=1,10
        a(i,j,:) = i
        b(i,j,:) = j
1     continue

      do 10 i=1,4
      do 10 i1=1,4
        a(i,i1,1) = a(i,i1,1) + b(i,i1,1) + 1
        do 10 j=1,4
          a(j,j,j) = a(j,j,j) + b(j,j,j) + 1
10    continue

      do 11 i=1,4
      do 11 i1=1,4
        a(i,i1,1) = a(i,i1,1) + b(i,i1,1) + 1
        do 11 j=1,4
          do 11 k=1,4
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
11    continue

      do 12 i=1,4
      do 12 i1=1,4
        a(i,i1,1) = a(i,i1,1) + b(i,i1,1) + 1
        do 12 j=1,4
          do 12 k=1,4
            do 12 L1=1,4
              a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
12    continue

      do 15 i=1,4
      do 15 i1=1,4
        a(i,i1,1) = a(i,i1,1) + b(i,i1,1) + 1
        do 15 j=1,4
          do 15 k=1,4
            do 15 L1=1,4
              do 15 L2=1,4
                do 15 L3=1,4
                  do 15 L4=1,4
                    a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
15    continue

      do 16 i=1,4
      do 16 i1=1,4
        a(i,i1,1) = a(i,i1,1) + b(i,i1,1) + 1
        do 16 j=1,4
          do 16 k=1,4
            do 16 L1=1,4
              do 16 L2=1,4
                do 16 L3=1,4
                  do 16 L4=1,4
                    do 16 L5=1,4
                      a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
16    continue
      print *,a
      end
