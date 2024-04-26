      real*4    a(20),b(20),c(20),d(20)
      integer*4 l(20)
      do 5 i=1,20
       l(i)  = i
       d(i) = 4.0
       a(i) = 2.0
       b(i) = 3.0
       c(i) = 4.0
 5    continue
       m = l(2)
       n = l(m)
       do 30 j=2,7,n
          a(l(j+1)) = b(l(j+1)) + c(l(j))
          b(l(j)) = ( a(l(j)) + c(l(j)) ) / d(j+1)
          c(l(j)) = b(l(j)) + a(l(j-1))
          d(j) = a(l(j)) * 2.0 + b(l(j))
 30    continue
      write(6,*) ' **  a result value  ** '
      write(6,*) (a(i),i=1,20)
      write(6,*) ' **  b result value  ** '
      write(6,*) (b(i),i=1,20)
      write(6,*) ' **  c result value  ** '
      write(6,*) (c(i),i=1,20)
      write(6,*) ' *** d result **** '
      write(6,*) (d(i),i=1,20)
      stop
      end
