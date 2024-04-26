      dimension a(30),b(30),c(30),d(30)
      data  a/30*1.0/,b/30*2.0/,c/30*3.0/,d/30*2.3/
      do 10 i=3,15,3
       a(2*i-1)= b(i+3) * c(i)
       c(i+1) = d(2*i-3) / a(i)
       b(i+2) = a(i+5) + a(2*i)
       d(2*i) = c(i+3) - b(i+3)
 10   continue
      write (6,600) a
      write (6,600) b
      write (6,600) c
      write (6,600) d
      do 20 j=27,5,-1
        a(j-2) = b(j) + c(j+2)
        b(j+1) = c(j+2) / d(j+3)
        c(j+3) = a(j) * 3.0
        d(j) = a(j) - b(j)
 20   continue
      write (6,600) a
      write (6,600) b
      write (6,600) c
      write (6,600) d
 600  format(2x,3(10f7.3/))
      stop
      end
