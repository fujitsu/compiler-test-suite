
      integer*4  i, sum
      integer*4  m1(2,100), m2(2,100)
      integer*4  ans( 10), cal( 10), nn
      data ans  / 100,   0,   0,   0,   0,   0,   0,   0,   0,   0/
      parameter (nn=1)

      call sort1(m1, m2)
      call sort2( m1 )
      sum=0
      do 100 i=1, 100
  100   if(m1(1,i).eq.m2(1,i).and.m1(2,i).eq.m2(2,i)) sum=sum+1
      cal(1)=sum

      do 10 i=1, nn
         if (cal(i).eq.ans(i)) then
            print *, '  ', i, ':   *** ok ***'
         else
            print *, '  ', i, ':   *** ng ***'
            print *, '      cal = ', cal(i)
            print *, '      ans = ', ans(i)
         endif
   10 continue

      stop
      end

      subroutine srand( seed )
      integer*4  seed, rr
      common  /ran/ rr
      rr = seed
      end

      function rand()
      integer*4  rand, rr
      common  /ran/ rr
      rr = mod(rr*29+123, 1024)
      rand = rr*100/1024+1
      end

      subroutine init( m1 )
      integer*4  m1(2,100)
      integer*4  i, n, rand
      do 100 i=1, 100
        m1(1,i)=i
        m1(2,i)=0
  100 continue
      call srand( 1 )
      do 200 i=1, 10000
        n=rand()
        m1(2,n)=m1(2,n)+1
  200 continue
      end

      subroutine sort1(m1, m2)
      integer*4  m1(2,100), m2(2,100)
      integer*4  i, j, hd, tl, md
      call init( m1 )
      m2(1,1)=m1(1,1)
      m2(2,1)=m1(2,1)
      do 100 i=2, 100
        tl=1
        hd=i-1
  110   md=(tl+hd)/2
           if (m1(2,i).gt.m2(2,md)) then
             if (md.eq.hd) then
               md=md+1
             else
               tl=md+1
               goto 110
             endif
           else if (m1(2,i).lt.m2(2,md)) then
             if (md.ne.tl) then
               hd=md
               goto 110
             endif
           else
             md=md+1
           endif
  130   if (md.eq.i) goto 140
        if (m2(2,md).eq.m1(2,i)) then
           md=md+1
           goto 130
        endif
  140   do 120 j=i, md+1, -1
           m2(1,j)=m2(1,j-1)
  120      m2(2,j)=m2(2,j-1)
        m2(1,md)=m1(1,i)
        m2(2,md)=m1(2,i)
  100 continue
      end

      subroutine sort2( m1 )
      integer*4  m1(2,100)
      integer*4  i, j, tmp
      call init( m1 )
      do 100 i=1, 99
        do 100 j=i+1, 100
          if ((m1(2,j).lt.m1(2,i)).or.
     +        (m1(2,j).eq.m1(2,i).and.m1(1,j).lt.m1(1,i))) then
            tmp=m1(1,i)
            m1(1,i)=m1(1,j)
            m1(1,j)=tmp
            tmp=m1(2,i)
            m1(2,i)=m1(2,j)
            m1(2,j)=tmp
          endif
  100 continue
      end
