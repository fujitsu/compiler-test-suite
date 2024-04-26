      real*8    a(10),b(10),c(10),d(10)
      integer*4 l(10)
      data    a/10*1.0d0/,b/10*2.0d0/,c/10*3.0d0/,d/10*4.0d0/,n/10/
       do 10 i=10,1,-1
        l(i) = i
 10    continue
       do 30 i=3,7
        do 20 j=i,n
          a(l(j)) = b(l(j)) + c(j)
          b(l(j)) = (a(l(j))-2.0) / c(j)
          c(j) = b(l(j)) - a(l(j))
 20     continue
        a(l(i)) = d(i) + c(i)
 30    continue
      write(6,*) ' **  a result value  ** '
      write(6,*) a
      write(6,*) ' **  b result value  ** '
      write(6,*) b
      write(6,*) ' **  c result value  ** '
      write(6,*) c
      stop
      end
