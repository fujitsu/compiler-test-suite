      program main
      real*4     a(5000),b(5000),c(5000),ans(5000),d
      d = 10.0
      do 10 i = 1,5000
          a(i) = d
          d = d + 10.0
   10 continue
      fl = 0
      call sub1(a,b)
      call sub2(a,c)
      do 20 i = 1,30
        ans(i) = b(i) - c(i)
        if(ans(i).ne.0.0e0) then
          write(6,100)
          write(6,120)i,ans(i),b(i),c(i)
          fl = 1
        endif
   20 continue
      call sub3(a,b)
      call sub4(a,c)
      do 30 i = 1,60
        ans(i) = b(i) - c(i)
        if(ans(i).ne.0.0e0) then
          write(6,100)
          write(6,130)i,ans(i),b(i),c(i)
          fl = 1
        endif
   30 continue
      call sub5(a,b)
      call sub6(a,c)
      do 40 i = 1,120
        ans(i) = b(i) - c(i)
        if(ans(i).ne.0.0e0) then
          write(6,100)
          write(6,140)i,ans(i),b(i),c(i)
          fl = 1
        endif
   40 continue
      call sub7(a,b)
      call sub8(a,c)
      do 50 i = 1,250
        ans(i) = b(i) - c(i)
        if(ans(i).ne.0.0e0) then
          write(6,100)
          write(6,150)i,ans(i),b(i),c(i)
          fl = 1
        endif
   50 continue
      call sub9(a,b)
      call sub10(a,c)
      do 60 i = 1,500
        ans(i) = b(i) - c(i)
        if(ans(i).ne.0.0e0) then
          write(6,100)
          write(6,160)i,ans(i),b(i),c(i)
          fl = 1
        endif
   60 continue
      call sub11(a,b)
      call sub12(a,c)
      do 70 i = 1,1000
        ans(i) = b(i) - c(i)
        if(ans(i).ne.0.0e0) then
          write(6,100)
          write(6,170)i,ans(i),b(i),c(i)
          fl = 1
        endif
   70 continue
      call sub13(a,b)
      call sub14(a,c)
      do 80 i = 1,5000
        ans(i) = b(i) - c(i)
        if(ans(i).ne.0.0e0) then
          write(6,100)
          write(6,180)i,ans(i),b(i),c(i)
          fl = 1
        endif
   80 continue
      if(fl.eq.0) then
            write(6,200)
      endif
      stop
  100 format(1h ,'*** ng *** ')
  120 format(1h ,'max=   30 ans(',i4,')=',e14.7,' b=',z8,' c=',z8)
  130 format(1h ,'max=   60 ans(',i4,')=',e14.7,' b=',z8,' c=',z8)
  140 format(1h ,'max=  120 ans(',i4,')=',e14.7,' b=',z8,' c=',z8)
  150 format(1h ,'max=  250 ans(',i4,')=',e14.7,' b=',z8,' c=',z8)
  160 format(1h ,'max=  500 ans(',i4,')=',e14.7,' b=',z8,' c=',z8)
  170 format(1h ,'max= 1000 ans(',i4,')=',e14.7,' b=',z8,' c=',z8)
  180 format(1h ,'max= 5000 ans(',i4,')=',e14.7,' b=',z8,' c=',z8)
  200 format(1h ,'=== test ok ===')
      end
      subroutine sub1(a1,b1)
      real*4      a1(30),b1(30)
      do 40 i = 1,30
   40     b1(i) = sqrt(a1(i))
      return
      end
      subroutine sub2(a1,c1)
      real*4      a1(30),c1(30)
      do 50 i = 1,30
   50     c1(i) = sqrt(a1(i))
      return
      end
      subroutine sub3(a1,b1)
      real*4      a1(60),b1(60)
      do 40 i = 1,60
   40     b1(i) = sqrt(a1(i))
      return
      end
      subroutine sub4(a1,c1)
      real*4      a1(60),c1(60)
      do 50 i = 1,60
   50     c1(i) = sqrt(a1(i))
      return
      end
      subroutine sub5(a1,b1)
      real*4      a1(120),b1(120)
      do 40 i = 1,120
   40     b1(i) = sqrt(a1(i))
      return
      end
      subroutine sub6(a1,c1)
      real*4      a1(120),c1(120)
      do 50 i = 1,120
   50     c1(i) = sqrt(a1(i))
      return
      end
      subroutine sub7(a1,b1)
      real*4      a1(250),b1(250)
      do 40 i = 1,250
   40     b1(i) = sqrt(a1(i))
      return
      end
      subroutine sub8(a1,c1)
      real*4      a1(250),c1(250)
      do 50 i = 1,250
   50     c1(i) = sqrt(a1(i))
      return
      end
      subroutine sub9(a1,b1)
      real*4      a1(500),b1(500)
      do 40 i = 1,500
   40     b1(i) = sqrt(a1(i))
      return
      end
      subroutine sub10(a1,c1)
      real*4      a1(500),c1(500)
      do 50 i = 1,500
   50     c1(i) = sqrt(a1(i))
      return
      end
      subroutine sub11(a1,b1)
      real*4      a1(1000),b1(1000)
      do 40 i = 1,1000
   40     b1(i) = sqrt(a1(i))
      return
      end
      subroutine sub12(a1,c1)
      real*4      a1(1000),c1(1000)
      do 50 i = 1,1000
   50     c1(i) = sqrt(a1(i))
      return
      end
      subroutine sub13(a1,b1)
      real*4      a1(5000),b1(5000)
      do 40 i = 1,5000
   40     b1(i) = sqrt(a1(i))
      return
      end
      subroutine sub14(a1,c1)
      real*4      a1(5000),c1(5000)
      do 50 i = 1,5000
   50     c1(i) = sqrt(a1(i))
      return
      end
