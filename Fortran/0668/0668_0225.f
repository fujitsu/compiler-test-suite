      program main
      real*4   ra1(100)
      call sub1(ra1,100)
      call sub2(50,50,20)
      call sub3(50)
      call sub4(50,50)
      stop
      end
      subroutine sub1(ra1,n)
      real*4   ra1(n),rb1(100),rc1(100)
      real*4   ra0,rb0,rc0
      data     rb1/100*2.2/,ra0/3.3/,rb0/4.4/,rc0/5.5/
      do 10 i=1,n
         if(rb1(i) .gt. ra0) then
            ra1(i) = sqrt(rb1(i))
         else if(rb1(i) . lt . ra0) then
                 ra1(i) = -1.0 / rb1(i)
              else
                 ra1(i) = 0.0
         endif
         rc1(i) = ra1(i) * rb0 + rb1(i) * rc0
   10 continue
      write(6,100) rc1
  100 format(1h ,10f7.1)
      return
      end
      subroutine sub2(n,m,mm)
      real*8   da1(50),db1(50),dc1(50)
      real*8   da2(50,50),db2(50,50)
      real*4   ra0,rb0,rc0
      data     rc0/10.1/
      data     db1/50*3.3/,da2/2500*5.5/,db2/2500*7.7/,dc1/50*0.0/
      do 10 i=1,n
         da1(i) = 0.0
         ra0    = (db1(m) * da2(i,m) + db1(mm) * da2(i,mm)) / 2.0
         if(ra0) 10,10,20
   20       rb0 = 29.0 * ra0 ** 0.125 - db2(i,m) / 2.0
         if(rb0) 10,10,30
   30       ra0 = (da2(i,m) + da2(i,mm)) / 2.0
            ra0 = rb0 * ra0 * db1(mm) * 1000.0
            da1(i) = ra0 * 600.0
            dc1(i) = dc1(i) + ra0  * rc0
   10 continue
      write(6,100) da1,dc1
  100 format(1h ,5f15.1)
      return
      end
      subroutine sub3(n)
      real*4  ra0,rb0
      real*4  ra1(50),rb1(50),rc1(50),rd1(50)
      real*8  da0,db0
      real*8  da1(50),db1(50),dc1(50),dd1(50)
      data    ra1/50*0.1/,rb1/50*0.2/,rc1/50*0.3/,rd1/50*0.4/
      data    da1/50*1.1/,db1/50*1.2/,dc1/50*1.3/,dd1/50*1.4/
      do 10 i=1,n
         ra0    = sin (ra1(i)) + cos(da1(i))
         da0    = log (rb1(i)  / db1(i))
         rb0    = exp (dc1(i)  / dd1(i))
         db0    = sqrt(rc1(i)  * rd1(i))
         rb1(i) = dc1(i) / db0 * da0 - rb0 * ra0
         db1(i) = dd1(i) / db0 * da0 - rb0 * ra0
   10 continue
      write(6,100) rb1,db1
  100 format(1h ,5f15.3)
      return
      end
      subroutine sub4(n,l)
      real*4   ra1(50),rb1(50),ra0
      real*8   da1(50),db1(50)
      integer  ia1(50),ib1(50),ic1(50),ia0,ib0
      real*4   ra2(50,50)
      real*8   da2(50,50)
      data     ia1/50*1/,ib1/50*2/,ic1/50*3/,ia0/5/,ib0/7/
      data     ra0/9/,da1/50*0.4/,ra2/2500*0.0/,da2/2500*0.0/
      do 10 i=1,n
         ra1(i) = (ia1(i) - ib1(i)) / ia0
         rb1(i) = (ic1(i) - ra1(i)) * da1(i)
         db1(i) = ra1(i) * ib0
         do 20 j=1,n
            da2(j,i) = da2(j,i) + db1(i)
   20    continue
         do 30 k=1,l
            ra2(k,i) = ra2(k,i) + db1(i) - ra0
   30    continue
   10 continue
      write(6,100) rb1,da2,ra2
  100 format(1h ,5f15.3)
      return
      end
