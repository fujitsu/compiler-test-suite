      real*4    a(10,10,10),b(10,10,10),c(10,10,10)
      integer*4 l(10)
      do 5 i=1,10
       do 5 j=1,10
        do 5 k=1,10
          a(i,j,k) = 2.0
          b(i,j,k) = 3.0
          c(i,j,k) = 4.0
 5    continue
       do 10 i=10,1,-1
        l(i) = i
 10    continue
       m = l(1)
       n = l(9)
       do 20 i=3,7
        do 20 j=2,m
         do 20 k=4,m
          b(i,j,k+n) = (a(l(i),l(j),l(k))-2.0) / c(j,i,k+n)
          c(j,i,k+1) = b(i,j,k) + a(l(i),l(j),l(k))
          a(l(i),l(j),l(k)) = b(i,j+n,k) + c(j,i,k+n)
 20    continue
      write(6,*) ' **  a result value  ** '
      write(6,*) (((a(i,j,k),i=4,5),j=5,6),k=7,8)
      write(6,*) ' **  b result value  ** '
      write(6,*) (((b(i,j,k),i=5,6),j=2,3),k=5,6)
      write(6,*) ' **  c result value  ** '
      write(6,*) (((c(i,j,k),i=4,5),j=6,7),k=6,7)
      write(6,*) ' **** n and m ***** '
      write(6,*) n,m
      stop
      end
