
      integer*4  i, j, f, sub, sub2
      character*20 c1, c2
      integer*8     p
      character*20  cc, d1(20),d2(10)
      pointer(p,cc(20))
      integer*4  ans( 10), cal( 10), nn
      data ans  /   0,   0,   0,   0,   0,   0,   0,   0,   0,   0/
      parameter (nn=2)
      data  c1  / '01234567890123456789' /
      data  c2  / '00112233445566778899' /

      p=loc(d1)
      do 1 i=1, 20
         cc(i)=c1(1:i)
    1 continue
      do 100 i=2, 10, 2
        p=loc(d1)
        j=i*2/sub(2)
        if (cc(i).ne.cc(j)) goto 100
        d2(i)=cc(j)
  100 continue
      f=0
      do 110 i=2, 10, 2
        p=loc(d2)
        if (cc(i).ne.d1(i)) f=1
  110 continue
      cal(1)=f
      cal(2)=sub2(d1, d2)
      do 300 i=10, 2, -2
        p=loc(d1)
        j=i*2
        if (cc(i).eq.cc(j)) goto 300
        cc(i)=cc(j)
  300 continue
      f=0
      do 310 i=2, 10, 2
        p=loc(d2)
        if (cc(i).ne.cc(i*2)) f=1
  310 continue
      cal(3)=f
      print *, '---  ---'
      do 10 i=1, nn
         if (cal(i).eq.ans(i)) then
            print *, '  ', i, ':   *** ok ***'
         else
            print *, '  ', i, ':   *** ng ***'
            print *, '      cal = ', cal(i)
            print *, '      ans = ', ans(i)
         endif
   10 continue
      print *, '---  ---'

      stop
      end
      function sub( i )
      integer*4 sub, i
      sub=i
      end
      function sub2(d1, d2)
      integer*4 sub2
      character*(*) d1(10), d2(10)
      integer*4 i, j, sub
      integer*8 p
      character*20 cc
      pointer(p, cc(10))
      sub2=0
      do 100 i=2, 10, 2
        p=loc(d1)
        j=i*2/sub(2)
        if (cc(i).ne.cc(j)) goto 100
        d2(i)=cc(j)
  100 continue
      do 110 i=2, 10, 2
        p=loc(d2)
        if (cc(i).ne.d1(i)) sub2=1
  110 continue
      end
