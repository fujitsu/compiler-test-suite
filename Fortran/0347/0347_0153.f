      real*8    a(40),b(40),c(40),d(40)
      data    n/1/
      s = 3.01
      do 10 i=1,40
        a(i) = s
        b(i) = a(i) + s
        c(i) = b(i) + s + 2.0
        d(i) = c(i) + s * 1.2
  10  continue
      m = n + 1
      do 20 k=3,15,m
        a(2*k+m) = b(2*k+n) + c(2*k+n) - d(2*k)
        c(2*k) = a(2*k) + b(k+m)
        b(k) = d(2*k+1) * a(k+n) - c(2*k-n)
        d(2*k-m) = a(m) * 2.01 + c(k-n)
 20   continue
      write(6,*) ' **  a result value  ** '
      write(6,*) (a(i),i=3,20)
      write(6,*) ' **  b result value  ** '
      write(6,*) (b(i),i=3,20)
      write(6,*) ' **  c result value  ** '
      write(6,*) (c(i),i=3,20)
      stop
      end
