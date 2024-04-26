      real*8    a(30),b(30),c(30),d(30)
      data    n/1/
      s = 3.01
      do 10 i=1,30
        a(i) = s
        b(i) = a(i) + s
        c(i) = b(i) + s + 2.0
        d(i) = c(i) + s * 1.2
  10  continue
      m = n + 1
      do 20 k=2,14,m
        a(2*k+m) = b(2*k+n) + c(2*k+n) - d(2*k)
        c(2*k) = a(2*k) + b(k+m)
        b(k) = d(m) * a(k+n) - c(2*k-n)
 20   continue
      write(6,*) ' **  a result value  ** '
      write(6,*) (a(i),i=8,17)
      write(6,*) ' **  b result value  ** '
      write(6,*) (b(i),i=3,12)
      write(6,*) ' **  c result value  ** '
      write(6,*) (c(i),i=6,15)
      stop
      end
