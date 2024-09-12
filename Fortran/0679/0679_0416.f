      program main
      dimension a(10),b(10),c(10),d(10),e(10),f(10),g(10),h(10)
      data a/10*1.0/,b/10*4.0/,c/10*1.0/,d/10*3.0/,e/10*4.0/
      data f/10*1.0/,g/10*2.0/,h/10*1.0/
      do 10 i=2,10
        s    = a(i)   + sqrt(b(i))
        a(i) = a(i-1) + s
        c(i) = a(i)   + s
        c(i) = c(i-1)
        s    = c(i)   + d(i)
        d(i) = d(i-1) + s
        e(i) = d(i)   + s
        f(i) = f(i-1)
        s    = g(i)   + f(i)
        g(i) = g(i-1) + s
        h(i) = g(i)   + s
  10  continue
      write(6,*) a
      write(6,*) c
      write(6,*) d
      write(6,*) e
      write(6,*) f
      write(6,*) g
      write(6,*) h,' i = ',i
      stop
      end
