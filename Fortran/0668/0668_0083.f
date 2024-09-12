      program main
      real*4     a(100,100),b1(100,100),c1(100,100),ans1(100,100),d
      real*4     b2(100,100),c2(100,100),ans2(100,100)
      data       a/10000*0.0e0/
      data       d/0.0e0/
      integer*2  fl
      do 10 i = 1,100
        do 20 j = 1,100
          a(j,i) = d
          d = d + 1.5e0
   20   continue
   10 continue
      do 30 i = 1,100
        do 40 j = 1,100
          b1(j,i) = sin(a(j,i))
          b2(j,i) = cos(a(j,i))
   40   continue
   30 continue
      call sub1(a,c1,c2)
      fl = 0
      do 50 i = 1,100
        do 60 j = 1,100
          ans1(j,i) = b1(j,i) - c1(j,i)
          ans2(j,i) = b2(j,i) - c2(j,i)
          aa1 = abs(ans1(j,i))
          aa2 = abs(ans2(j,i))
          bb1 = epsilon(b1(j,i))*abs(b1(j,i))
          bb2 = epsilon(b2(j,i))*abs(b2(j,i))
           if( ( abs(aa1-bb1) > 1.0e-6) .or.
     1         ( abs(aa2-bb2) > 1.0e-6) ) then
            write(6,100)
            write(6,150)j,i,ans1(j,i),b1(j,i),c1(j,i)
            write(6,150)j,i,ans2(j,i),b2(j,i),c2(j,i)
            fl = 1
          endif
   60   continue
   50 continue
      if(fl.eq.0) then
            write(6,200)
      endif
      stop
  100 format(1h ,'*** ng *** ')
  150 format(1h ,'ans(',i3,',',i3,')=',e14.7,' b=',z8,' c=',z8)
  200 format(1h ,'=== test ok ===')
      end
      subroutine sub1(a1,cc1,cc2)
      real*4 a1(100,100),cc1(100,100),cc2(100,100)
      do 70 i = 1,100
        do 80 j = 1,100
          cc1(j,i) = sin(a1(j,i))
          cc2(j,i) = cos(a1(j,i))
   80   continue
   70 continue
      return
      end
