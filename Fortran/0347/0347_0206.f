      dimension   a(10),b(10),c(10)
      data   a/10*2.0/,b/10*3.0/,c/10*4.0/
      do 10 i=1,7
        ix = i + 1
        b(ix) = a(ix) + c(i)
        a(ix) = b(ix) * c(i)
        c(i) = b(ix) - a(ix)
 10   continue
      write(6,*)a
      write(6,*)b
      write(6,*)c
      stop
      end
