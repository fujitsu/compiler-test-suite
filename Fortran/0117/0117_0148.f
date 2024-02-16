        real*8 a(0:399,0:399),b(0:399,0:399),c(0:399,0:399)
        a = 0.0
        b = 3.0 
        c = 3.0
        do 10 i=1,4
          do 20 j=1,4
            do 30 k=2,4
              a(j,k) = a(j,k)
 30         continue
 20       continue
 10     continue
        do 40 i=1,4
          do 40 j=2,4
            do 40 k=1,4
              a(j,k) = a(j,k)
 40     continue
        do 50 i=2,4
          do 50 j=1,4
            do 50 k=1,4
              a(j,k) = a(j,k)
 50     continue
        do 60 i=1,4
          do 60 j=1,4
            do 60 k=1,4,2
              a(j,k) = a(j,k)
 60     continue
        do 70 i=1,4
          do 70 j=1,4,2
            do 70 k=1,4
              a(j,k) = a(j,k)
 70     continue
        do 80 i=1,4,2
          do 80 j=1,4
            do 80 k=1,4
              a(j,k) = a(j,k)
 80     continue

        do 90 i=1,4
          do 90 j=1,4
            write(6,*) a(i,j)
 90     continue
        stop
        end
