      dimension   a(10),b(10),c(10)
      data   a/10*2.0/,b/10*3.0/,c/10*4.0/
      n = 11
      do 10 i=1,10
        m = n - i
        b(i) = a(m) + c(i)
        a(m) = b(i) * c(i)
        c(i) = b(i) - a(i)
 10   continue
      write(6,*)a
      write(6,*)b
      write(6,*)c
      stop
      end
