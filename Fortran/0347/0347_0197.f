      dimension   a(10),b(10),c(10)
      data   a/10*2.0/,b/10*3.0/,c/10*4.0/
      n = 2
      do 10 i=3,10
        a(n+1) = b(n) + c(i)
        b(n) = a(n-1) * c(i)
        n = n + 1
 10   continue
      write(6,*)a
      write(6,*)b
      write(6,*)n
      stop
      end
