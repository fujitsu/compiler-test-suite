      dimension  a(20),b(10),c(10),d(10)
      equivalence  (a(1),z),(a(20),y)
      s = 5.0
      do 10 i=1,10
        b(i) = s + 1.0
        c(i) = s * 2.0
        d(i) = s / 2.0
 10   continue
      do 11 i=1,20
        a(i) = s
 11   continue
      do 20 j=2,8
        a(j+5) = b(j+1) * c(j+2)
        c(j+1) = d(j+1) + a(j+1)
        b(j-1) = c(j) -d(j)
 20   continue
      do 30 j=2,8
        d(j+2) = b(j+1) * c(j+2)
        c(j+1) = d(j+1) + b(j+1)
        b(j-1) = c(j) -d(j)
        y = d(j) + c(j) + b(j)
        z = (d(j-1) + c(j)) / b(j)
 30   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      write(6,*) y,z
      stop
      end
