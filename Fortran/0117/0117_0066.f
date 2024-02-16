        real*8 a(400,400),b(400,400),c(400,400)
        a = 0.0
        b = 3.0 
        c = 3.0
        do 5 l=1,400,20
        do 10 i=1,400
          do 20 j=1,400
            do 30 k=l,l+19
              a(i,j) = a(i,j) + b(i,k)*c(k,j)
 30         continue
 20       continue
 10     continue
 5      continue
c
        do 40 i=1,3
          do 40 j=1,3
            write(6,*) a(i,j)
 40     continue
        stop
        end
