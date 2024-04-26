      real*8 a(10,10,10),b(10,10,10)
      do 1 i=1,10
      do 1 j=1,10
        a(i,j,:) = i
        b(i,j,:) = j
1     continue

      do 10 i=1,4
        a(i,i,i) = a(i,i,i) + b(i,i,i) + 1
        do 10 j=1,4
          a(j,j,j) = a(j,j,j) + b(j,j,j) + 1
10    continue

      do 11 i=1,4
        a(i,i,i) = a(i,i,i) + b(i,i,i) + 1
        do 11 j=1,4
          do 11 k=1,4
            a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
11    continue

      do 12 i=1,4
        a(i,i,i) = a(i,i,i) + b(i,i,i) + 1
        do 12 j=1,4
          do 12 k=1,4
            do 12 L1=1,4
              a(i,j,k) = a(i,j,k) + b(i,j,k) + 1

12    continue

      do 16 i=1,4
        a(i,i,i) = a(i,i,i) + b(i,i,i) + 1
        do 16 j=1,4
          do 16 k=1,4
            do 16 L1=1,4
              do 16 L2=1,4
                do 16 L3=1,4
                  do 16 L4=1,4
                    do 16 L5=1,4
                      a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
16    continue

      do 17 i=1,4
        a(i,i,i) = a(i,i,i) + b(i,i,i) + 1
        do 17 j=1,4
          do 17 k=1,4
            do 17 L1=1,4
              do 17 L2=1,4
                do 17 L3=1,4
                  do 17 L4=1,4
                    do 17 L5=1,4
                      do 17 L6=1,4
                        a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
17    continue
      print *,a
      end
