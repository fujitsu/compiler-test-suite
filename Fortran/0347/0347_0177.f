      dimension  a(20),b(20),c(20),d(20)
      real*8   a,b,c,d
      data  a,b,c,d/20*1.d0,20*2.d0,20*3.d0,20*4.d0/
      s=1.0
      do 10 i=2,20
        if (i.gt.10) then
          a(i) = s
          b(i) = a(i) - s
          c(i) = b(i) - s
          d(i) = s * 2.0
        else
          a(i) = b(i-1) - 2.0
          b(i) = s
          c(i) = a(i) - b(i)
          d(i) = c(i-1) - a(i-1)
        endif
        s = s + 1.0
 10   continue
      write(6,600) c
      write(6,600) d
      do 20 j=7,10
        a(j) = b(j+1) - d(j)
        c(j) =(a(j) - d(j)) * b(j)
        do 20 k=j-1,10
          a(k) = (b(k) + d(k)) / 2.0
          d(k-1) = (b(k) - a(k)) * 2.0
          b(k) = a(k) + d(k-1) - c(k)
 20   continue
      do 30 m=8,15
       do 40 n=m-1,17
         a(n+1) = b(n+1) - c(n)
         b(n) = a(n) - d(n) + (c(n) / 2.0)
         d(n) = a(n) + c(n)
 40    continue
       c(m) = d(m) * 2.0 - b(m)
       a(m) = c(m) + d(m)
 30   continue
      write(6,600) a
      write(6,600) b
      write(6,600) c
      write(6,600) d
 600  format(1x,2(2(5f15.7 /)))
      stop
      end
