      program main
      integer*4 i,fl/0/,ff/0/
      real*8 arg(1000),ansni(1000),ansvi(1000),ans(1000),vararg(1000)
      arg(1)=0.0d0
      vararg(1)=0.2d2
      do 10 i=1,999
   10   vararg(i+1)=vararg(i)+0.2d2
   20 do 30 i=1,999
   30   arg(i+1)=arg(i)+0.2d0
      call noils(ansni,arg)
      do 40 i=1,1000
   40   ansvi(i)=dsqrt(arg(i))
      do 50 i=1,1000
        ans(i)=ansvi(i)-ansni(i)
        if( ans(i).ne.0.0d0 ) then
          write(6,100) ff,i,ans(i)
          write(6,110) arg(i),ansvi(i),ansni(i)
          fl=1
        endif
   50 continue
      ff=ff+1
      if(ff.gt.1000) goto 60
      arg(1)=vararg(ff)
      goto 20
   60 if(fl.eq.0) write(6,200)
      stop
  100 format(1h ,'ng ff=',i4,' ansvi-ansni(',i4,') =',d15.8)
  110 format(1h ,'        arg=',z16,' ansvi=',z16,' ansni=',z16)
  200 format(1h ,'=== test ok ===')
      end
      subroutine noils(ans,arg)
      real*8 ans(1000),arg(1000)
      do 10 i=1,1000
   10   ans(i)=dsqrt(arg(i))
      return
      end
