      real*8 a(10,10,10),b(10,10,10)
      do 1 i=1,10
      do 1 j=1,10
        a(i,j,:) = i
        b(i,j,:) = j
1     continue

      do 10 i=1,10,10
        a=0.0
        a(1,2,3) = 99
        do 10 j=1,10,10
         do 10 k=1,10,10
          a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
10    continue
      print *,a
      do 11 i=1,10
      a=0
      a(1,2,3) = 99
        do 11 j=1,10
         do 11 k=1,10
          a(i,j,k) = a(i,j,k) + b(i,j,k) + 1
11    continue
      print *,a
      do 12 i=1,10
      a=0
      a(1,2,3) = 99
        do 12 i1=1,10
          do 12 j=1,10
            do 12 k=1,10
              a(i1,j,k) = a(i1,j,k) + b(i,j,k) + 1
12    continue
      print *,a
      do 13 i=1,10
      a=0
      a(1,2,3) = 99
        do 13 i1=1,10
          a=0
          do 13 j=1,10
            do 13 k=1,10
              a(i1,j,k) = a(i1,j,k) + b(i,j,k) + 1
13    continue
      print *,a
      do 14 i=1,10
      a=0
      a(1,2,3) = 99
        do 14 i1=1,10
          a=0
          a(1,2,3) = 99
          do 14 j=1,10
            do 14 k=1,10
              a(i1,j,k) = a(i1,j,k) + b(i,j,k) + 1
14    continue
      print *,a
      do 15 i=1,10,10
      a=0
      a(1,2,3) = 99
        do 15 i1=1,10,10
          a=0
          a(1,2,3) = 99
          do 15 i2=1,10,10
            a=0
            a(1,2,3) = 99
            do 15 j=1,10,10
              do 15 k=1,10,10
                a(i2,j,k) = a(i2,j,k) + b(i,j,k) + 1
15    continue
      print *,a
      do 16 i=1,10,10
      a=0
      a(1,2,3) = 99
        do 16 i1=1,10,10
          a=0
          a(1,2,3) = 99
          do 16 i2=1,10,10
            a=0
            a(1,2,3) = 99
            do 16 i3=1,10,10
              do 16 j=1,10,10
                do 16 k=1,10,10
                  a(i2,j,k) = a(i2,j,k) + b(i,j,k) + 1
16    continue
      print *,a
      end
