      real*4    a(20,20,20),b(20,20,20),c(20,20,20),
     *          aa(20),bb(20),cc(20)
      integer*4 l(20)
      do 5 i=1,20
       l(i)  = i
       aa(i) = 2.0
       bb(i) = 3.0
       cc(i) = 4.0
       do 5 j=1,20
        do 5 k=1,20
          a(i,j,k) = 2.0
          b(i,j,k) = 3.0
          c(i,j,k) = 4.0
 5    continue
       m = l(3)
       n = l(m)
       do 30 i=3,7
        do 20 j=2,m
         do 20 k=4,10
          a(i,j,k+1) = b(i,j+n,k) + c(j,i,k+n)
          b(i,j,k+n) = (a(i,j,k)+2.0) / c(j,i,k+1)
          c(j,i,k+n) = b(i,j,k) + a(i,j-1,k)
 20    continue
       aa(l(i)) = bb(l(i)) + cc(l(i))
       do 40 k=3,7
         bb(l(k)) = (aa(l(k))/2) - cc(k) * 2.0
         cc(k) = bb(l(k)) + aa(l(k))
 40    continue
 30    continue
      write(6,*) ' **  a result value  ** '
      write(6,*) (((a(i,j,k),i=4,5),j=5,6),k=7,8)
      write(6,*) ' **  b result value  ** '
      write(6,*) (((b(i,j,k),i=5,6),j=2,3),k=5,6)
      write(6,*) ' **  c result value  ** '
      write(6,*) (((c(i,j,k),i=4,5),j=6,7),k=6,7)
      write(6,*) ' **** aa ***** '
      write(6,*) (aa(ii),ii=1,10)
      stop
      end
