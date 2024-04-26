      dimension a(10),b(10)
      data a,b/10*1.,10*3./,n/1/,nn/7/
      j=1
      do 10 i=1,nn
        a(i) = a(i) + float(i)
        b(j) = a(i+n) + b(j+n)
        j = j + n
 10   continue
      write(6,*) a,b
      stop
      end
