      dimension   a(10,10),b(10,10),c(10,10)
      data   a/100*2.0/,b/100*3.0/,c/100*4.0/
      n = 1
      do 10 i=3,10
        a(n,n) = b(n,n) + c(n,n)
        n = n + 1
        b(n,n) = a(n-1,n) * c(n,n)
        c(n,n) = (b(n,n) - a(n,n)) / 2.0
 10   continue
      write(6,*) ' ## a ##'
      write(6,1000)   a
      write(6,*) ' ## b ##'
      write(6,1000)   b
      write(6,*) ' ## c ##'
      write(6,1000)   c
 1000 format(4e15.8)
      stop
      end
