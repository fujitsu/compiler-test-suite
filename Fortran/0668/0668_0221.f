      program main
      common   /blk1/ra2(256,256),rb2(256,256),rc2(256,256)
      common   /blk2/ra1(256),rb1(256)
      real*8   ra2,rb2,rc2
      real*8   ra1,rb1
      parameter(n=256,l=256,m=256)
      do 10 i=1,n
         ra1(i) = atan(1.0/float(i))
         rb1(i) = asin(1.0/float(i))
         do 10 j=m,1,-1
            ra2(i,j) = dsin(dfloat(j+i))
            rb2(i,j) = dcos(dfloat(j+i))
            rc2(i,j) = dtan(dfloat(j+i))
   10 continue
      call sub1(l,m,n)
      call sub2(ra1,n)
      call sub3(ra1,rb1,l,n)
      write(6,100) rb1
  100 format(1h ,5e15.4)
      stop
      end
      subroutine sub1(l,m,n)
      integer  ia0
      common   /blk1/ra2(256,256),rb2(256,256),rc2(256,256)
      real*8   ra2,rb2,rc2
      ia0 = mod(n,2)
      do 10 j=1,m
         do 20 i=1,l
            ra2(i,j) = 0.0
   20    continue
         do 30 k=1,n-1,2
         do 30 i=1,l
            ra2(i,j) = ra2(i,j) + rb2(i,k)   * rc2(j,k)
     +                          + rb2(i,k+1) * rc2(j,k+1)
   30    continue
         if(ia0 .eq. 1) then
            do 40 i=1,l
               ra2(i,j) = ra2(i,j) + rb2(i,n) * rc2(j,n)
   40       continue
         endif
   10 continue
      return
      end
      subroutine sub2(ra1,n)
      common   /blk1/ra2(256,256)
      integer  ia0,ib0
      real*8   ra2,ra1(n)
      do 10 i=2,n-1
         ib0 = mod(i,2)
         ia0 = i - 1
         do 20 k=1,ia0,2
            do 20 j =i+1,n
               ra2(j,i+1) = ra2(j,i+1) - ra1(k)   * ra2(j,k)
     +                                 - ra1(k+1) * ra2(j,k+1)
   20    continue
         if(ib0 .eq. 1) then
            do 30 j= i+1,n
               ra2(j,i+1) = ra2(j,i+1) - ra1(i) * ra2(j,i)
   30       continue
         endif
   10 continue
      return
      end
      subroutine sub3(ra1,rb1,l,n)
      common   /blk1/ra2(256,256)
      real*8   ra2,ra1(n),rb1(n)
      do 10 i=1,n
         rb1(i) = ra2(i,1) * ra1(i)
   10 continue
      do 20 j=2,l
         do 30 i=1,n-j+1
            rb1(i) = rb1(i) + ra2(i,j) * ra1(i+j-1)
   30    continue
         do 40 i=1,n-j+1
            rb1(i+j-1) = rb1(i+j-1) + ra2(i,j) * ra1(i)
   40    continue
   20 continue
      return
      end
