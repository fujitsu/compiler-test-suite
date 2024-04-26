      dimension a(30),b(30),c(30),d(30)
      data  a/30*4.0/,b/30*3.0/,c/30*2.0/,d/30*2.3/
      do 10 i=5,10
       a(i+1) = b(2) + c(i-1)
       d(3) = c(2*i+1) / a(20)
       b(i+10) = d(2*i-5) * 2.0
       c(20) = a(i) * c(2*i-1)
       a(2*i) = b(20) + c(2*i)
 10   continue
      write(6,600) a
      write(6,600) b
      write(6,600) c
      write(6,600) d
      do 20 j=15,5,-2
        d(2*j) = c(20) + a(2*j-1)
        b(j-2) = a(2+j) * d(11)
        c(2*j-3)= b(15) - c(2)
        a(10) = d(11) + c(30)
        a(9)  = d(21) / 2
 20   continue
      write(6,600) a
      write(6,600) b
      write(6,600) c
      write(6,600) d
      do 30 k=3,13,2
        a(i+1) = c(2*i+1) * 2.0
        b(i) = a(i-2) + d(2*i-3)
        c(10) = b(30) + c(i)
        d(23) = b(13) * c(2*i-1)
 30   continue
      write(6,600) a
      write(6,600) b
      write(6,600) c
      write(6,600) d
 600  format(3(2x,10f7.3/))
      stop
      end
