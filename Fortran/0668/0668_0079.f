      program main
      real*8     a(100,100),b(100,100),c(100,100),ans(100,100),d
      data       a/10000*0.0d0/
      data       d/0.0d0/
      integer*4  basem(10)
      logical*4  mask(100,100)
      integer*2  fl/0/
      data       basem/1,1,0,0,0,1,0,0,1,1/
      jj=0
      do 1 i = 1,100
        do 2 j = 1,10
          do 3 ii = 1,10
            if(basem(ii).eq.1) then
              mask(i,ii+jj)=.true.
            else
              mask(i,ii+jj)=.false.
            endif
    3     continue
          jj=jj+10
    2   continue
        jj=0
    1 continue
      d = 20.0d0
      do 10 i = 100,1,-1
        do 20 j = 100,1,-1
            a(j,i) = d
            d = d - 0.003d0
   20   continue
   10 continue
      do 30 i = 1,100
        do 40 j = 1,100
          if(mask(j,i)) then
            b(j,i) = dtanh(a(j,i))
          endif
   40   continue
   30 continue
      call sub1(a,c,mask)
      fl = 0
      do 50 i = 1,100
        do 60 j = 1,100
          if( mask(j,i) ) then
            ans(j,i) = b(j,i) - c(j,i)
            if(ans(j,i).ne.0.0d0) then
              write(6,100)j,i,ans(j,i),b(j,i),c(j,i)
              fl = 1
            endif
          endif
   60   continue
   50 continue
      if(fl.eq.0) write(6,200)
      stop
  100 format(1h ,'*** ng *** ans(',i3,',',i3,')=',
     *  d14.7,' b=',z16,' c=',z16)
  200 format(1h ,'=== test ok ===')
      end
      subroutine sub1(a1,c1,mask)
      real*8    a1(100,100),c1(100,100)
      logical*4 mask(100,100)
      do 10 i = 1,100
        do 20 j = 1,100
          if(mask(j,i)) then
            c1(j,i) = dtanh(a1(j,i))
          endif
   20   continue
   10 continue
      return
      end
