      common /com1/i1
      common /com2/i2
      common /com3/r4
      common /com4/L1
      common /com5/L4
      integer*1 a(1000),i1,j1,k1
      integer*2 b(1000),i2,j2,k2
      real*4    c(1000),r4,s4,t4
      logical*1 d(1000),L1,o1,p1
      logical*4 e(1000),L4,o4,p4
     
      j1=i1
      j2=i2
      s4=r4
      o1=L1
      o4=L4

      do i=1,1000
       a(i)=j1
       b(i)=j2
       c(i)=s4
       d(i)=o1
       e(i)=o4

       k1=a(i)
       k2=b(i)
       t4=c(i)
       p1=d(i)
       p4=e(i)
      end do

      print *,j1,j2,s4,o1,o4
      do i=1,1000
        if (a(i).ne.  i1) stop 'ng'
        if (b(i).ne.  i2) stop 'ng'
        if (c(i).ne.  r4) stop 'ng'
        if (d(i).neqv.L1) stop 'ng'
        if (e(i).neqv.L4) stop 'ng'
      end do
      if (k1.ne.  i1) stop 'ng'
      if (k2.ne.  i2) stop 'ng'
      if (t4.ne.  r4) stop 'ng'
      if (p1.neqv.L1) stop 'ng'
      if (p4.neqv.L4) stop 'ng'
      print *,'ok'
      end

      block data bk
      integer*1 i1
      integer*2 i2
      real*4    r4
      logical*1 L1
      logical*4 L4
      common /com1/i1
      common /com2/i2
      common /com3/r4
      common /com4/L1
      common /com5/L4
      data i1/1/
      data i2/2/
      data r4/2.0/
      data L1/.true./
      data L4/.false./
      end
