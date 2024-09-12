      program main
      integer*4 i,ff/0/,fl/0/
      real*8 arg(1000),ansni(1000),ansvi(1000),ans(1000),vararg(1000)
      arg(1)   =7.2370055773322621d+75
      vararg(1)=7.2370055773322621d+75
      do 10 i=1,999
   10   vararg(i+1)=vararg(i)-1.0d62
   20 do 30 i=1,999
   30   arg(i+1)=arg(i)-1.0d59
      call   vil(ansvi,arg)
      call novil(ansni,arg)
      do 40 i=1,1000
        ans(i)=ansvi(i)-ansni(i)
        if( ans(i).ne.0.0e0 ) then
          fl=1
          write(6,100) ff,i,ans(i)
          write(6,110) arg(i),ansvi(i),ansni(i)
        endif
   40 continue
      if( ff.gt.999 ) goto 60
      ff=ff+1
      arg(1)=vararg(ff)
      goto 20
   60 if(fl.eq.0) write(6,200)
      stop
  100 format(1h ,'*** ng *** ff=',i4,' i=',i4,
     *           ' ansvi-ansni=',d15.8)
  110 format(1h ,'  arg=',z16,' ansvi=',z16,' ansni=',z16)
  200 format(1h ,'=== test ok ===')
      end
      subroutine vil(ans1,arg)
      real*8 ans1(1000),arg(1000)
      do 10 i=1,1000
   10   ans1(i)=dsqrt(arg(i))
      return
      end
      subroutine novil(ans2,arg)
      real*8 ans2(1000),arg(1000)
      do 10 i=1,1000
   10   ans2(i)=dsqrt(arg(i))
      return
      end
