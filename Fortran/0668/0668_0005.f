      program main
      real*4     a(5000),b(5000),c(5000),ans(5000),d/10.0/
      integer*4  fl/0/,max(7)/30,60,120,250,500,1000,5000/,
     +           basem(10)/1,0,1,1,1,0,1,1,0,1/
      logical*4  mask(5000)
      ii=0
      do 1 i=1,500
        do 2 j=1,10
          if(basem(j).eq.1) then
            mask(j+ii)=.true.
          else
            mask(j+ii)=.false.
          endif
    2   continue
        ii=ii+10
    1 continue
      do 10 i=1,5000
        a(i)=d
        d=d+10.0
   10 continue
      do 20 j=1,7
        call sub1(a,b,max(j),mask)
        call sub2(a,c,max(j),mask)
        do 30 i=1,max(j)
          if( mask(i) ) then
            ans(i)=b(i)-c(i)
            if(ans(i).ne.0.0e0) then
              write(6,100)
              write(6,150) max(j),i,ans(i),b(i),c(i)
              fl=1
            endif
          endif
   30   continue
   20 continue
      if(fl.eq.0) write(6,200)
      stop
  100 format(1h ,'*** ng *** ')
  150 format
     *(1h ,'max=',i4,' ans(',i4,')=',e14.7,' b=',z8,' c=',z8)
  200 format(1h ,'=== test ok ===')
      end
      subroutine sub1(a1,b1,max1,mask)
      integer *4  max1
      real*4      a1(max1),b1(max1)
      logical*4   mask(max1)
      do 10 i=1,max1
        if( mask(i) ) then
          b1(i) = sqrt(a1(i))
        endif
   10 continue
      return
      end
      subroutine sub2(a1,c1,max1,mask)
      integer *4  max1
      real*4      a1(max1),c1(max1)
      logical*4   mask(max1)
      do 10 i=1,max1
        if( mask(i) ) then
          c1(i)=sqrt(a1(i))
        endif
   10 continue
      return
      end
