      real    *8  a(10)
      real    *8  b(10)
      integer *2  k(10)
      complex *16 e(10)
      dimension   l(10),n(10),m(10)
      data a/10*0.0/,b/10*1.0/,n/10*1/,m/10*2/
      do 10 i=1,10
       l(i) = m(i)*m(i)
       n(i) = l(i)/m(i)
       k(i) = m(i)
       b(i) = k(i)
       b(i) = b(i)/m(i)
       a(i) = b(i)*m(i)
       e(i) = a(i)
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) k
      write(6,*) e
      write(6,*) l
      write(6,*) m
      write(6,*) n
      stop
      end
