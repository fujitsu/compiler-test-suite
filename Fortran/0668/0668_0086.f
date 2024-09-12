      program main
      real*8     a(4096),b1(4096),c1(4096),ans1(4096),d
      real*8     b2(4096),c2(4096),ans2(4096)
      data       a/4096*0.0d0/
      data       d/0.0d0/
      integer*4  fl,max(13)
      data       max/1,2,4,8,16,32,64,128,256,512,1024,2048,4096/
      do 10 i = 1,4096
          a(i) = d
          d = d + 0.15d0
   10 continue
      fl = 0
      do 20 j = 1,13
        call sub1(a,b1,b2,max(j))
        call sub2(a,c1,c2,max(j))
        do 30 i = 1,max(j)
          ans1(i) = b1(i) - c1(i)
          ans2(i) = b2(i) - c2(i)
          if(ans1(i).ne.0.0d0.or.ans2(i).ne.0.0d0) then
            write(6,100)
            write(6,150)max(j),i,ans1(i),b1(i),c1(i)
            write(6,150)max(j),i,ans2(i),b2(i),c2(i)
            fl = 1
          endif
   30   continue
   20 continue
      if(fl.eq.0) then
            write(6,200)
      endif
      stop
  100 format(1h ,'*** ng *** ')
  150 format
     *(1h ,'max=',i4,' ans(',i4,')=',d14.7,' b=',z16,' c=',z16)
  200 format(1h ,'=== test ok ===')
      end
      subroutine sub1(a1,bb1,bb2,max1)
      integer *4  max1
      real*8      a1(max1),bb1(max1),bb2(max1)
      do 40 i = 1,max1
          bb1(i) = dsin(a1(i))
   40     bb2(i) = dcos(a1(i))
      return
      end
      subroutine sub2(a1,cc1,cc2,max1)
      integer *4  max1
      real*8      a1(max1),cc1(max1),cc2(max1)
      do 50 i = 1,max1
          cc1(i) = dsin(a1(i))
   50     cc2(i) = dcos(a1(i))
      return
      end
