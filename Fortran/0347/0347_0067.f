      dimension a(30),b(30),c(30),d(30)
      data  a/30*1.1/,b/30*1.2/,c/30*1.3/,d/30*1.4/
      do 10 i=5,10
        a(i+2) = b(i+3) + d(i)
        d(i-1) = a(i+1) + c(i-3)
        b(i+1) = c(i) + b(2+i)
        c(i+3) = a(i+3) +d(i+1)
 10   continue
      write(6,*) (a(i),i=7,16)
      write(6,*) (b(i),i=8,17)
      write(6,*) (c(i),i=8,17)
      write(6,*) (d(i),i=6,15)
      s = 2.0
      n = 10
      do 20 j=3,n,2
        b(j-1) = a(j+2) /2.0
        a(2*j+3) = c(j-1) - b(j)
        c(2*j) = d(j+1) * s
        d(j-2) = a(2*j) + b(j+3)
 20   continue
      write(6,*) (a(i),i=9,21)
      write(6,*) (b(i),i=3,15)
      write(6,*) (c(i),i=6,18)
      write(6,*) (d(i),i=3,15)
      stop
      end
