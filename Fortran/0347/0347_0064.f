      dimension a(30),b(30),c(30),d(30)
      data  a/30*5.1/,b/30*2.2/,c/30*3.1/,d/30*4.2/
      n = 2
      do 10 i=n,20
        a(i) = b(i) + c(i+3)
        b(i+1) = a(i+1) * c(i)
        c(i) = b(i) + a(i)
 10   continue
      write(6,600) a
      write(6,600) b
      write(6,600) c
      write(6,600) d
      n = 20
      do 20 j=2,n,2
        a(j) = b(j+1) / c(j) + d(j)
        c(j) = a(j-1) * (d(j+1)/2.0)
        d(j+3)= a(j+2) + c(j+1)
 20   continue
      write(6,600) a
      write(6,600) b
      write(6,600) c
      write(6,600) d
 600  format(2x,3(2x,10f7.3/))
      stop
      end
