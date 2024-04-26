      dimension  a(10,10,10),b(10,10,10),c(10,10,10),d(10,10,10)
      data  n/2/,k/3/,m/10/,s/1.0/
      do 10 i=1,10
       do 10 j=1,10
        do 10 k=1,10
          a(i,j,k) = s
          b(i,j,k) = s + 1.0
          c(i,j,k) = s + 2.0
          d(i,j,k) = s / 2.0
          if (s.gt.700.0) then
            s = s - 1
          else
            s = s + 1
          endif
 10   continue
      do 20 i=m-k+n,1,-1
       do 20 j=1,10,n
        do 20 k=1,m
          a(i,j,k) = b(i,j,k) + c(i,j,k)
          b(i,j,k) = c(i,j,k) * (a(i,j,k) / 5.0)
          c(i,j,k) = a(i,j,k) - d(i,j,k)
 20   continue
      do 30 i=1,10,m-n*4
       do 30 j=1,10,m-n
        do 30 k=1,10
          a(i,j,k) = b(i,j,k) - d(i,j,k)
          d(i,j,k) = (a(i,j,k) + c(i,j,k)) / 2.0
 30   continue
      write(6,600) (((a(i,j,k),i=1,2),j=3,5),k=1,5)
      write(6,600) (((b(i,j,k),i=2,3),j=2,4),k=2,6)
      write(6,600) (((c(i,j,k),i=3,4),j=4,6),k=3,7)
      write(6,600) (((d(i,j,k),i=4,5),j=5,7),k=4,8)
 600  format(1x,2(3(5f12.3/)))
      stop
      end
