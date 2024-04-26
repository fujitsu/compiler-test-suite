      real*8    a(10),b(10),c(10)
      integer*4 l(10)
      data    a/10*1.02d0/,b/10*2.01d0/,c/10*3.02d0/
       do 10 i=10,1,-1
        l(i) = i
 10    continue
       do 20 i=1,10
        do 20 j=2,6
          a(l(j)) = b(l(j)) + c(j)
          b(l(j)) = (a(l(j))-2.0) / c(j)
          c(j) = b(l(j)) - a(l(j))
 20    continue
      write(6,*) ' **  a result value  ** '
      write(6,*) a
      write(6,*) ' **  b result value  ** '
      write(6,*) b
      write(6,*) ' **  c result value  ** '
      write(6,*) c
      stop
      end
