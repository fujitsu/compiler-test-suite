      program main
      real*8     a(100,100),b(100,100),c(100,100),ans(100,100),d
      data       a/10000*0.0d0/
      data       d/0.0d0/
      integer*2  fl
      do 10 i = 1,100
        do 20 j = 1,100
          a(j,i) = d
          d = d + 0.03d0
   20   continue
   10 continue
      do 30 i = 1,100
        do 40 j = 1,100
          b(j,i) = dcos(a(j,i))
   40   continue
   30 continue
      call sub1(a,c)
      fl = 0
      do 50 i = 1,100
        do 60 j = 1,100
          ans(j,i) = b(j,i) - c(j,i)
          if(ans(j,i).ne.0.0d0) then
            write(6,100)
            write(6,150)j,i,ans(j,i),b(j,i),c(j,i)
            fl = 1
          endif
   60   continue
   50 continue
      if(fl.eq.0) then
            write(6,200)
      endif
      stop
  100 format(1h ,'*** ng *** ')
  150 format(1h ,'ans(',i3,',',i3,')=',d14.7,' b=',z16,' c=',z16)
  200 format(1h ,'=== test ok ===')
      end
      subroutine sub1(a1,c1)
      real*8 a1(100,100),c1(100,100)
      do 70 i = 1,100
        do 80 j = 1,100
          c1(j,i) = dcos(a1(j,i))
   80   continue
   70 continue
      return
      end
