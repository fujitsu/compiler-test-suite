      program main
      dimension a(10),b(10),c(10),d(10),e(10),f(10)
      data a/10*1.0/,b/10*2.0/,c/10*1.0/,d/10*3.0/,e/10*4.0/
      data f/10*1.0/
      do 10 i=2,9
        s1   = a(i)   + a(i+1)
        a(i) = a(i-1) + s1
        b(i) = a(i)   + s1
        b(i) = b(i-1)
        s2   = b(i)   + c(i)
        c(i) = c(i-1) + s2
        d(i) = c(i)   + s2
        d(i) = d(i-1)
        s3   = d(i)   + e(i)
        e(i) = e(i-1) + s3
        f(i) = e(i)   + s3
  10  continue
      write(6,*) a
      write(6,*) c
      write(6,*) d
      write(6,*) e
      write(6,*) f,' i = ',i
      stop
      end
