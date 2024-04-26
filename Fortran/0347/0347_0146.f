      real*8    a(20,20,20),b(20,20,20),c(20,20,20)
      integer*4 l1(20),l2(20),l3(20),aa(20),bb(20),cc(20)
      do 5 i=1,20
        aa(i) = i
        bb(i) = i + 1
        cc(i) = i + 2
       do 5 j=1,20
        do 5 k=1,20
          a(i,j,k) = 2.0
          b(i,j,k) = 3.0
          c(i,j,k) = 4.0
 5    continue
       do 10 i=1,20
        l1(i) = i
        l2(i) = 21 - i
        l3(21-i) = i
 10    continue
       m = l2(l1(11))
       n = l1(1)
       do 20 i=3,7
        do 30 j=2,m+2
         do 40 k1=4,m
           b(i,j,k1+m) = (a(l1(i),l2(j),l3(k1))-2.0) - c(j,i,k1+2)
           a(l1(i),l2(j),l3(k1)) = b(i,j+n,k1) + c(j,i,k1+n)
           c(j,i,k1+1) = b(i,j,k1) + a(l1(i),l2(j),l3(k1))
 40      continue
         m1 = m - 1
         do 50 k2=4,m1
           a(i,j,k2+m1) = (b(l3(i),l2(j),l1(k2))-2.0) - c(j,i,k2+n)
           c(j,i,k2+1) = a(i,j,k2) + b(l3(i),l2(j),l1(k2))
           b(l3(i),l2(j),l1(k2)) = a(i,j+n,k2) + c(j,i,k2+n)
 50      continue
 30    continue
       aa(i) = bb(i+n) * cc(i+m)
       bb(n) = aa(i-1) - cc(i+m)
       cc(i+2) = aa(i-2) + bb(i-n)
 20   continue
      write(6,*) ' **  a result value  ** '
      write(6,*) (((a(i,j,k),i=4,5),j=5,6),k=14,15)
      write(6,*) ' **  b result value  ** '
      write(6,*) (((b(i,j,k),i=5,6),j=4,5),k=15,16)
      write(6,*) ' **  c result value  ** '
      write(6,*) (((c(i,j,k),i=4,5),j=5,6),k=6,7)
      write(6,*) ' **  aa result value  ** '
      write(6,*) (aa(i),i=2,6)
      write(6,*) ' **  bb result value  ** '
      write(6,*) (bb(i),i=3,7)
      write(6,*) ' **  cc result value  ** '
      write(6,*) (cc(i),i=1,5)
      write(6,*) ' **** n and m ***** '
      write(6,*) n,m
      stop
      end
