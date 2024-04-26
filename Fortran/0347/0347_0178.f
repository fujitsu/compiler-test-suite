      real*8     a(20),b(20),c(20),d(20)
      s = 1.0
      do 10 i=1,20
       a(i) = s
       b(i) = s * 2.0
       c(i) = s + 2.0
       d(i) = s + 1.0
       s = s + 1
 10   continue
      do 20 j=20,1,-1
        a(j) = b(j) + d(j)
        do 30 k=1,j
          b(k) = c(k) * 2.0 - a(k)
          c(k) = (b(k)-d(k)) + a(k)
 30     continue
        d(j) = c(j) + b(j)
 20   continue
      write(6,*) (a(i),i=2,11)
      write(6,*) (b(i),i=5,14)
      write(6,*) (c(i),i=9,18)
      write(6,*) (d(i),i=3,12)
      do 40 l=3,20
        a(l) = b(l) + c(l)
        do 50 m=l,1,-1
          b(m) = (a(m) - c(m)) * d(m)
          c(m) =  d(m) + a(m) / 2.0
 50     continue
        d(l) = a(l) * c(l) - d(l)
 40   continue
      write(6,*) (a(i),i=1,10)
      write(6,*) (b(i),i=8,17)
      write(6,*) (c(i),i=4,13)
      write(6,*) (d(i),i=11,20)
      stop
      end
