      program main
      integer*4 ia1(100),ib1(100),ic1(100),id1(100),ie1(100)
      integer*4 ia0,ib0
      real*4    ra1(100),rb1(100),rc1(100)
      real*4    ra2(100,100)
      real*4    ra0,rb0,rc0
      real*8    da1(100),db1(100),dc1(100),dd1(100)
      real*8    da0,db0,dc0,dd0
      complex*8 ca1(100),cb1(100),cc1(100),cd1(100),ce1(100)
      parameter(m=100)
      data n/10/,j/3/,l/6/
      do 1 i=100,1,-1
         ia1(i) = i
         ib1(i) = ia1(i) + i
         ic1(i) = ia1(i) + ib1(i) + i
         id1(i) = ia1(i) + ib1(i) + ic1(i) + i
         ie1(i) = ia1(i) + ib1(i) + ic1(i) + id1(i) + i
         rc1(i) = float(ie1(i) - i)
         ca1(i) = float(id1(i) + i)
         cc1(i) = float(ic1(i) / i)
         ce1(i) = float(ia1(i) * i)
         rb1(i) = float(1 / id1(i))
         da1(i) = dble(rc1(i) + rb1(i))
         db1(i) = dble(rc1(i) - rb1(i))
         dc1(i) = dble(rc1(i) - rb1(i))
    1 continue
      do 2 i=1,100
         do 2 j=100,1,-1
            ra2(i,j) = float(1 / i + j)
    2 continue
      do 10 i=1,100
         ra1(i) = da1(i) * db1(i)
         ra1(101-i) = -da1(i) * rb1(i)
   10 continue
      do 20 i=1,n
         ra0 = -rc1(ia1(i))
         ia1(i) = ia1(i) * 2 + n
         rb0 =  rc1(ia1(i)) * 2.718
         dc1(ia1(i)) = ra0 ** 2 * ca1(ia1(i)) - rb0 + ra1(i)
   20 continue
      do 30 i=1,m
         da0    = 2.0d0 * dfloat(i) - 1.0d0 + dc1(i)
         db0    = 2.0d0 * dfloat(m) + 1.0d0
         dc0    = da0 / db0
         dc0    = dcos(dc0 * 3.14d0)
         dd0    = 2.0d0 * (1.0d0 - dc0)
         dd1(i) = 1.0d0 / dd0
   30 continue
      j=j+1
      i=i-1
      rc0 = 0.0
      do 40 k=1,100
   40    rc0 = rc0 + ra2(j,k) * ra2(k,l) + dd1(i)
      ia0 = ib1(1) + rc0
      ib0 = ic1(1)
      do 50 i=2,m
         ia0 = max(ia0 , ib1(i))
         ib0 = min(ib0 , ic1(i))
   50 continue
      ib0 = id1(1)
      ia0 = 1
      do 60 i=2,m
         if(ib0 .lt. id1(i)) then
            ib0 = id1(i)
            ia0 = i
         endif
   60 continue
      do 70 i=1,m
         if(ie1(i)) 71,72,73
   71       cb1(i) = -cc1(i) + ia0 + ib0
            go to 75
   72       cb1(i) = 0.0
            go to 75
   73       cb1(i) = log(cc1(i))
   75    cd1(i) = cb1(i) * 10 - ce1(i)
   70 continue
      write(6,*) cd1
      stop
      end
