      real*8    a(20,20),b(20,20),c(20,20),d(20,20)
      data    n/1/
      s = 3.01
      do 10 i=1,20
       s = s + 1.0
       do 10 j=1,20
        a(i,j) = s
        b(i,j) = a(i,j) + s
        c(i,j) = b(i,j) + s + 2.0
        d(i,j) = c(i,j) + s * 1.2
  10  continue
      m = n + 13
      do 20 i=2,14
       a(i,m) = b(i,1) * 2.0
       do 20 j=2,16
        a(i,j+1) = a(i,j+2) + c(i,j+2) - d(i+1,j)
        c(i,j) = a(i,j) + b(i,j+1)
        b(i,j) = d(i,j) * a(i,j-1) - c(i,j-1)
 20   continue
      write(6,*) ' **  a result value  ** '
      write(6,1) ((a(i,j),i=8,17),j=3,6)
      write(6,*) ' **  b result value  ** '
      write(6,1) ((b(i,j),i=3,12),j=6,9)
      write(6,*) ' **  c result value  ** '
      write(6,1) ((c(i,j),i=6,15),j=7,10)
    1 format(2e20.8)
      stop
      end
