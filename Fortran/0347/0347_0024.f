      dimension  a(10,10),b(10,10),c(10,10)
      do 10 i=1,10
       do 10 j=1,10
        a(i,j) = 1.0
        b(i,j) = 2.0
        c(i,j) = 3.0
 10   continue
      m = 10
      n = 2
      do 20 i=1,m,n
       do 20 j=1,n*3+1
         a(i,j) = b(i,j) * c(i,j) / 2.0
         b(i,j) = a(i,j+1) + c(i,j)
         c(i,j) = a(i,j) - b(i,j)
 20   continue
      do 30 i=1,10,n
       do 30 j=m-n,1,-1
         a(i,j) = b(i,j) * 2.0 - c(i,j)
         b(i,j) = a(i,j) + c(i,j)
         c(i,j) = a(i,j) * b(i,j)
 30   continue
      n = n + 1
      do 40 i=1,n*3
       do 40 j=2,10,m-n*3
         a(i,j) = b(i,j) - c(i,j)
         c(i,j) = b(i,j) * a(i,j-1)
         b(i,j) = c(i,j) + (a(i,j-1) - 1.0)
 40   continue
      write(6,600) a
      write(6,600) b
      write(6,600) c
 600  format(1x,10(2(5f10.3 /)))
      stop
      end
