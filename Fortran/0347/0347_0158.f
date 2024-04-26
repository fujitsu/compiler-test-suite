      dimension  a(20,20,20),b(20,20),c(20,20,20),d(20)
      s = 1.0
      do 10 i=1,20
       s = s + 1.0
       d(i) = s
       do 10 j=1,20
        do 10 k=1,20
          a(i,j,k) = s
          b(i,k)   = s * 2.0
          c(i,j,k) = s + 2.0
 10   continue
      n = 0
      m = 0
      do 20 i=3,8
        a(i,i+1,10)  = b(i,i) - c(10,i,i)
        b(i,6) = a(i,4,i) + c(10-i,10-i,10)
        b(i,2*i-1) = a(i,i,10) * 2.0
        d(i) = a(10-i,10-i,10) - b(i,i) + c(4,i,i)
        if (d(i).gt.200.0) then
          n = n + 1
        else
          m = m + 1
        endif
 20   continue
      write(6,*) (((a(i,j,k),i=3,4),j=5,6),k=4,5)
      write(6,*) ((b(i,j),i=7,8),j=3,4)
      write(6,*) (((c(i,j,k),i=2,3),j=4,5),k=6,7)
      write(6,*) d
      write(6,*) n,m
      stop
      end
