      dimension a(30),b(30),c(30)
      data  a/30*1.0/,b/30*2.0/,c/30*3.0/,n/3/
      do 10 i=1,10
        k = i + 1
        do 10 j=5,15
          a(j+n+1) = b(j+k) * c(j)
          b(j+i) = a(j+1) / c(j-1)
          c(j-n) = a(j-1) + b(j-1)
 10   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
