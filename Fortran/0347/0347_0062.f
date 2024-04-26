      dimension a(30),b(30),c(30),d(30)
      data  a/30*5.1/,b/30*2.2/,c/30*3.1/,d/30*4.2/
      do 10 i=3,10
        d(2*i) = a(2*i+3) + c(3*i)
        b(2+i) = b(3+i) * d(i+1)
        c(2*i-3)= a(i+3) / 2.0
        a(2*i) = c(i-1) - b(i-2)
        d(2*i+1) = c(2*i) + d(2*i+1)
 10   continue
      write(6,600) a
      write(6,600) b
      write(6,600) c
      write(6,600) d
      do 20 j=13,5,-2
        c(2*j) = b(j-1) * d(j*2-1)
        a(j+3) = b(2*j+1) + c(j)
        d(j+1) = c(2*j-1) / 2.0
        b(j+5) = a(2*j-3) - d(j+3)
 20   continue
      write(6,600) a
      write(6,600) b
      write(6,600) c
      write(6,600) d
 600  format(3(2x,10f7.3/))
      stop
      end
