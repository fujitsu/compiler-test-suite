      program main
      real*8     a(4096),b(4096),c(4096),ans(4096),d
      data       a/4096*0.0d0/
      data       d/175.366d0/
      integer*4  fl,max(13)
      data       max/1,2,4,8,16,32,64,128,256,512,1024,2048,4096/
      do 10 i = 4096,1,-1
          a(i) = d
          d = d - 0.050d0
   10 continue
      fl = 0
      do 20 j = 1,13
        call sub1(a,b,max(j))
        call sub2(a,c,max(j))
        do 30 i = 1,max(j)
          ans(i) = b(i) - c(i)
          if(ans(i).ne.0.0d0) then
            write(6,100)
            write(6,150)max(j),i,ans(i),b(i),c(i)
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
      subroutine sub1(a1,b1,max1)
      integer *4  max1
      real*8      a1(max1),b1(max1)
      do 40 i = 1,max1
   40     b1(i) = dcosh(a1(i))
      return
      end
      subroutine sub2(a1,c1,max1)
      integer *4  max1
      real*8      a1(max1),c1(max1)
      do 50 i = 1,max1
   50     c1(i) = dcosh(a1(i))
      return
      end
