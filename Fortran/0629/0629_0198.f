      common   /blk1/ra2(256,256),rb2(256,256),rc2(256,256)
      common   /blk2/ra1(256),rb1(256)
      real*8   ra2,rb2,rc2
      real*8   ra1,rb1
      parameter(n=256,l=256,m=256)
      do 10 i=1,n
         do 10 j=m,1,-1
            ra2(i,j) = dsin(dfloat(j+i))
            rb2(i,j) = dcos(dfloat(j+i))
   10 continue
      do 20 i=1,n
         do 20 j=1,m
            rc2(i,j) = 5. 
            rb2(i,j) = 7.
         rc2(j,i) = 2
         rb2(i,j) = 1
   20 continue

      call sub1(l,m,n)
      write(6,100) ra2 
  100 format(1h ,5e15.4)
      stop
      end
      subroutine sub1(l,m,n)
      common   /blk1/ra2(256,256),rb2(256,256),rc2(256,256)
      real*8   ra2,rb2,rc2
       m=256
       l=256
       n=256
      do 30 j=1,m
         do 40 i=1,l
            ra2(i,j) = 0.0
   40    continue
         do 50 k=1,n-1,2
         do 50 i=1,l
            ra2(i,j) = ra2(i,j) + rb2(i,k)   * rc2(j,k)
     +                          + rb2(i,k+1) * rc2(j,k+1)
   50    continue
   30 continue
      return
      end
