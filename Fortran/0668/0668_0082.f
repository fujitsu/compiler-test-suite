      program main
      complex*8  b(100,100)
      real*4     a(100,100),aa(100,100)
      integer*4  fl/0/
      integer*4  basem(10)
      logical*4  mask(100,100)
      data       b/10000*(0.0e0,0.0e0)/
      data       a/10000*0.0e0/,aa/10000*0.0e0/
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
      j=0
      i=0
   10 j=j+1
      if(j.gt.100) goto 16
   15 i=i+1
      if(i.gt.100) goto 17
      b(i,j)=sin(float(i*j))*i*j
      b(i,j)=csqrt(b(i,j))*(i-50)*(j-50)
      b(i,j)=b(i,j)+b(j,i)/cmplx(2.0,0.0)
      goto 15
   17 i=0
      goto 10
   16 continue
      call nil(aa,b,mask)
      call vil( a,b,mask)
      fl=0
      do 30 j=1,100
        do 35 i=1,100
          if(mask(i,j)) then
            if(a(i,j).ne.aa(i,j)) then
              write(6,100) i,j,aa(i,j),a(i,j)
              fl=1
            endif
          endif
   35   continue
   30 continue
      if(fl.eq.0) write(6,200)
      stop
  100 format(1h ,'** cabs ng (',i3,',',i3,') ***',
     *           ' nil=',z8,' vil=',z8)
  200 format(1h ,' === cabs ok ===')
      end
      subroutine vil(a,b,mask)
      real*4        a(100,100)
      complex*8     b(100,100)
      logical*4  mask(100,100)
      do 10 j=1,100
        do 15 i=1,100
          if(mask(i,j)) then
            a(i,j)=cabs(b(i,j))
          endif
   15   continue
   10 continue
      return
      end
      subroutine nil(aa,b,mask)
      real*4         aa(100,100)
      complex*8       b(100,100)
      logical*4   mask(100,100)
      do 10 j=1,100
        do 20 i=1,100
          if(mask(i,j)) then
            aa(i,j)=cabs(b(i,j))
          endif
   20   continue
   10 continue
      return
      end
