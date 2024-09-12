      program main
      real*4     ra1(10),ra2(10,10),ra3(10,10,10),rb1(10)
      common /blk1/ra1,ra2,ra3,sum1,sum2
      call init(n)
      g   = 0.0
      sum = 0.0
      rmax = 0.0
      do 10 i=1,n
         sum = sum + ra1(i)
         if(rmax.lt.ra1(i)) then
            rmax = ra1(i)
            idx = i
         endif
         if(mod(i,2).eq.0) then
            call sub01
         endif
         rb1(i) = sin(float(i))
         g      = g + rb1(i)
         rb1(i) = g
   10 continue
      sum = sum + sum1 + sum2
      write(6,*) sum,rmax,idx,g
      stop
      end
      subroutine init(n)
      real*4     ra1(10),ra2(10,10),ra3(10,10,10)
      common /blk1/ra1,ra2,ra3,sum1,sum2
      n    = 10
      sum1 = 0.0
      sum2 = 0.0
      do 10 i=1,10
         ra1(i) = sin(float(i))
         do 10 j=1,10
            ra2(i,j) = cos(ra1(i))
            do 10 k=1,10
               ra3(i,j,k) = tan(ra2(i,j))
   10 continue
      return
      end
      subroutine sub01
      real*4     ra1(10),ra2(10,10),ra3(10,10,10)
      common /blk1/ra1,ra2,ra3,sum1,sum2
      n = 0
      k = 0
      sum = 0.0
      do 10 i=1,10
         n = n + 1
         sum = sum + ra2(n,i)
         call sub02
   10 continue
      sum1 = sum1 + sum
      return
      end
      subroutine sub02
      real*4     ra1(10),ra2(10,10),ra3(10,10,10)
      common /blk1/ra1,ra2,ra3,sum1,sum2
      n = 1
      m = 0
      sum = 0.0
      do 10 i=1,10
         m = m + 1
         sum = sum + ra3(n,m,i)
         n = n + 1
         if(n.gt.5 .and. n.le.10) then
            ra3(n,m,i) = n
         endif
   10 continue
      sum2 = sum2 + sum
      return
      end
