      program main
      real*4     a(100,100),b(100,100),c(100,100),ans(100,100),d
      integer*2  fl
      d = 0.0
      do 10 i = 1,100
        do 20 j = 1,100
          a(j,i) = d
          d = d + 0.01
   20   continue
   10 continue
      do 30 i = 1,100
        do 40 j = 1,100
          b(j,i) = sqrt(a(j,i))
   40   continue
   30 continue
      call sub1(a,c)
      fl = 0
      do 50 i = 1,100
        do 60 j = 1,100
          ans(j,i) = b(j,i) - c(j,i)
          if(abs(ans(j,i)).gt.1.0e-5) then
            write(6,100)j,i,ans(j,i),b(j,i),c(j,i)
            fl = 1
          endif
   60   continue
   50 continue
      if(fl.eq.0) then
            write(6,200)
      endif
      stop
  100 format(1h ,'*** ng *** ans(',i3,',',i3,')=',
     *  e14.7,' b=',z8,' c=',z8)
  200 format(1h ,'=== test ok ===')
      end
      subroutine sub1(a1,c1)
      real*4 a1(100,100),c1(100,100)
      do 70 i = 1,100
        do 80 j = 1,100
          c1(j,i) = sqrt(a1(j,i))
   80   continue
   70 continue
      return
      end
