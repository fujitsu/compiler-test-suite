
      common /com1/aa,gg
      common /com2/bb,cc,hh,kk
      common /com3/dd,ee,ff
      common /com4/ii
      common /com5/jj
      integer*1  a,aa
      integer*2  i,ii
      integer*4  b,bb,k(10),kk(10)
      real*4     c,cc
      real*8     d,dd
      complex*8  e,ee
      complex*16 f,ff
      logical*1  g,gg
      logical*4  h,hh
      character*10 j,jj*5
      a=aa+1
      b=bb+1
      c=cc+1.0e+0
      d=dd+1.0d+0
      e=ee+(1.0e+0,1.0e+0)
      f=ff+(1.0d+0,1.0d+0)
      g=gg.and..true.
      h=hh.and..true.
      i=ii+1
      j=jj//'fghij'
      k=kk+1
      print *,a,b,c,d,e,f,g,h,i,j,k
      end

      block data bk
      common /com1/aa,gg
      common /com2/bb,cc,hh,kk
      common /com3/dd,ee,ff
      common /com4/ii
      common /com5/jj
      integer*1  aa
      integer*2  ii
      integer*4  bb,kk(10)
      real*4     cc
      real*8     dd
      complex*8  ee
      complex*16 ff
      logical*1  gg
      logical*4  hh
      character  jj*5
      data aa,bb,cc,dd,ee,ff,gg,hh
     +     /0,0,0.,0.,(0.,0.),(0.,0.),.true.,.true./
      data ii,jj,kk /0,'abcde',10*0/
      end
