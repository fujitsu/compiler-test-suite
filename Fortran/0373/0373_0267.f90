      program main
      integer a(100,100),b(100,100),c(100,100)
      common /ssu/a,b,c

       do 10 i=1,10
        do 10 j=1,10
          a(i,j) = 11
          b(i,j) = 22
          c(i,j) = 33
   10 continue

      do 80 i=1,10
         do 90 j=1,10
            a(i,j) = c(1,5) - b(i,j)
            b(i,j) = a(i,5) + b(i,j)
            c(i,j) = 6.0
 90      continue
 80   continue
      write(6,*) b(5,5)
      end

