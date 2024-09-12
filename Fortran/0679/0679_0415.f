      dimension a(10),b(10),c(10),d(10),e(10)
      data a/10*1.0/,b/10*4.0/,c/10*1.0/,d/10*3.0/,e/10*4.0/
      do 10 i=2,10
        s    = a(i)   + sqrt(b(i))
        a(i) = a(i-1) + s
        c(i) = a(i)   + s
        s    = c(i)   + d(i)
        d(i) = d(i-1) + s
        e(i) = d(i)   + s
  10  continue
      write(6,*) a
      write(6,*) c
      write(6,*) d
      write(6,*) e,' i = ',i
      stop
      end
