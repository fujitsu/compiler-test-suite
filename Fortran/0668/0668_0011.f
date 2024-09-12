      program main
      integer*4 i,fl/0/,ff/0/,basem(10)
      real*8 arg(1000),ansni(1000),ansvi(1000),ans(1000),vararg(1000)
      logical*4 mask(1000)
      data basem/1,1,0,1,0,1,1,0,0,1/
      arg(1)=0.0d0
      vararg(1)=0.2d2
      ii=0
      do 1 j=1,100
        do 2 i=1,10
          if( basem(i).eq.1 ) then
            mask(ii+i)=.true.
          else
            mask(ii+i)=.false.
          endif
    2   continue
        ii=ii+10
    1 continue
      do 10 i=1,999
   10   vararg(i+1)=vararg(i)+0.2d2
   20 do 30 i=1,999
   30   arg(i+1)=arg(i)+0.02d0
      call noils(ansni,arg,mask)
      do 40 i=1,1000
        if( mask(i) ) then
          ansvi(i)=dsqrt(arg(i))
        endif
   40 continue
      do 50 i=1,1000
        if( mask(i) ) then
          ans(i)=ansvi(i)-ansni(i)
          if( ans(i).ne.0.0d0 ) then
            write(6,100) ff,i,ans(i),ansvi(i),ansni(i)
            fl=1
          endif
        endif
   50 continue
      ff=ff+1
      if(ff.gt.1000) goto 60
      arg(1)=vararg(ff)
      goto 20
   60 if(fl.eq.0) write(6,200)
      stop
  100 format(1h ,'ng ff=',i4,' ansvi-ansni(',i4,') =',d15.8,
     + ' ansvi=',z16,' ansni=',z16)
  200 format(1h ,'=== test ok ===')
      end
      subroutine noils(ans,arg,mask)
      real*8 ans(1000),arg(1000)
      logical*4 mask(1000)
      do 10 i=1,1000
        if( mask(i) ) then
          ans(i)=dsqrt(arg(i))
        endif
   10 continue
      return
      end
