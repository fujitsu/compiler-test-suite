      dimension  a(10,10),b(10,10),c(10,10),d(10,10)
      s = 1.0
      do 10 i=1,10
       do 10 j=1,10
        a(i,j) = s
        b(i,j) = s * 2.0
        c(i,j) = s + 1.0
        d(i,j) = s - 1.0
 10   continue

      do 20 i=1,10
       do 20 j=2,8
         s = c(i,j) - d(i,j)
         if (s.eq.0.0) go to 20
         if (s.gt.0.0) then
           a(i,j+1) = b(i,j+1) + (c(i,j) - d(i,j))
         else
           a(i,j+1) = b(i,j+1) + (d(i,j) - c(i,j))
         endif
         b(i,j) = c(i,j) + d(i,j) - a(i,j)
         c(i,j) = (d(i,j) - b(i,j)) * 2.0
         d(i,j) = a(i,j) + (b(i,j) - c(i,j)) / 2.0
         write(6,*) a(i,j),b(i,j),c(i,j),d(i,j)
 20   continue
      do 30 i=5,8
       do 30 j=3,7
         b(i,j) = (a(i,j+1) - d(i,j)) * c(i,j)
         c(i,j) = b(i,j-1) + d(i,j) - a(i,j)
         a(i,j) =(c(i,j) + d(i,j)) / 2.0
         write(6,*) i,j,a(i,j),b(i,j)
         d(i+1,j+1) = a(i,j) * b(i,j) - c(i,j)
 30   continue
      stop
      end
