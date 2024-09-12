      program main
      complex*16  a(4096)
      real*8      b(4096),c(4096),ans(4096)
      integer*4   fl,max(13)
      data        a/4096*(0.0d0,0.0d0)/
      data        max/1,2,4,8,16,32,64,128,256,512,1024,2048,4096/
      i=0
   10 i=i+1
      if(i.gt.100) goto 15
      a(i)=dsin(dfloat(i*i))*i
      a(i)=cdsqrt(a(i))*(i-50)*i
      a(i)=a(i)+a(i)/cmplx(2.0,0.0)
      goto 10
   15 fl = 0
      do 20 j = 1,13
        call sub1(a,b,max(j))
        call sub2(a,c,max(j))
        do 30 i=1,max(j)
          ans(i)=b(i)-c(i)
          if(ans(i).ne.0.0d0) then
            write(6,100)
            write(6,150) max(j),i,ans(i),b(i),c(i)
            fl=1
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
      integer*4   max1
      complex*16  a1(max1)
      real*8 b1(max1)
      do 10 i=1,max1
   10   b1(i)=cdabs(a1(i))
      return
      end
      subroutine sub2(a1,c1,max1)
      integer*4   max1
      complex*16  a1(max1)
      real*8 c1(max1)
      do 10 i=1,max1
   10   c1(i)=cdabs(a1(i))
      return
      end
