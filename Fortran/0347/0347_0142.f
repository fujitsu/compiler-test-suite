      real*4    a(10,10,10),b(10,10,10),c(10,10,10),
     *          aa(10),bb(10),cc(10)
      do 5 i=1,10
       aa(i) = 2.0
       bb(i) = 3.0
       cc(i) = 4.0
       do 5 j=1,10
        do 5 k=1,10
          a(i,j,k) = 2.0
          b(i,j,k) = 3.0
          c(i,j,k) = 4.0
 5    continue
       m = 7
       n = 2
       do 30 i=3,7
        do 20 j=2,m
         do 20 k=4,m
          a(i,j,k+1) = b(i,j+n,k) + c(j,i,k+n)
          b(i,j,k+n) = (a(i,j,k)+2.0) / c(j,i,k+1)
          c(j,i,k+n) = b(i,j,k) + a(i,j-1,k)
 20    continue
       aa(i) = bb(i) + cc(i)
       do 40 l=3,7
         bb(l) = (aa(l) - cc(l)) * 2.0
         cc(l) = bb(l) + aa(l)
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
