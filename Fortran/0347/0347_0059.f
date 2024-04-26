      dimension a(30),b(30),c(30),d(30)
      data  a/30*1.1/,b/30*1.2/,c/30*1.3/,d/30*1.4/
      do 10 i=5,10
        a(i+5) = b(i+1) + c(i+3)
        b(2*i+1) = c(23) * a(2*i+1)
        c(2*i+3) = c(1) + b(2*i)
 10   continue
      write(6,600) a
      write(6,600) b
      write(6,600) c
      s = 2.0
      n = 10
      do 20 j=3,13,2
        a(j-1) = b(j+2) + c(j+3)
        d(2*j-3) = c(2*j+1) - s
        c(2*j+1) = a(j+2) / b(2*j)
        s = a(1) + d(j-1)
        b(j+3) = a(2*j) * 3.0
 20   continue
      write(6,600) a
      write(6,600) b
      write(6,600) c
 600  format(3(2x,10f7.3/))
      stop
      end
