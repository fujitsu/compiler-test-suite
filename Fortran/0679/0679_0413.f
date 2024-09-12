      dimension a(10),b(10),c(10),d(10),e(10),f(10)
      data a/10*1.0/,b/10*2.0/,c/10*1.0/,d/10*3.0/,e/10*4.0/
      data f/10*1./
      do 10 i=2,10
        s = a(i) + b(i) + sqrt(f(i))
        a(i) = a(i-1) + s
        c(i) = a(i)   + s
        c(i) = c(i-1) + s
        d(i) = c(i)   + s
        e(i) = e(i-1) + s
  10  continue
      write(6,*) a
      write(6,*) c
      write(6,*) d
      write(6,*) e,' i = ',i
      stop
      end
