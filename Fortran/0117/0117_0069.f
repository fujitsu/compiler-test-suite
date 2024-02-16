        real*8 a(0:399,0:399),b(0:399,0:399),c(0:399,0:399)
        a = 0.0
        b = 3.0 
        c = 3.0
        do 10 i=1,19
          do 20 j=1,19
            do 30 k=1,19
              a(j,k) = a(j,k) + b(i,k)*c(k,j)
 30         continue
 20       continue
 10     continue
c
        do 40 i=1,20
          do 40 j=1,20
            write(6,*) a(i,j)
 40     continue
        stop
        end
