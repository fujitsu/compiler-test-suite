      program main
      implicit  real*8(a-h,o-z)
      real*4  true,conv
      integer e,f
      parameter (nloop=10)
      common /qa8/ x(1001),y(1001),z(1001),u(500),
     . px(15,100),cx(15,100),u1(5,22,2),u2(5,22,2),u3(5,22,2),
     . b(64,8),bnk1(5), c(64,8),bnk2(5), p(4,512),bnk3(5), h(64,8),
     .        bnk4(5), e (192),bnk5(5), f(192),
     . ex(67),dumdum(160),rh(67), dex(67), vx(150), xx(150), grd(150)
     . ,dum(8000)
      true=1.00000000
      r=4.86
      t=276.0
      call init
      do 11 jax=1,nloop
      call initp(10)
      do 10 i=1,100
      ar     =      cx(5,i)
      br     = ar - px(5,i)
      px(5,i)= ar
      cr     = br - px(6,i)
      px(6,i)= br
      ar     = cr - px(7,i)
      px(7,i)= cr
      br     = ar - px(8,i)
      px(8,i)= ar
      cr     = br - px(9,i)
      px(9,i)= br
      ar     = cr - px(10,i)
      px(10,i)= cr
      br     = ar - px(11,i)
      px(11,i)= ar
      cr     = br - px(12,i)
      px(12,i)= br
      px(14,i)= cr - px(13,i)
      px(13,i)= cr
  10  continue
  11  continue
      do 20 i=1,100
      conv=px(5,i)
      if (conv.ne.true) then
      write(6,*) i,conv,true,'1 ** ng **'
      stop
      endif
      conv=px(6,i)
      if (conv.ne.true-i) then
      write(6,*) i,conv,true-i,'2 ** ng **'
      stop
      endif
      conv=px(7,i)
      if (conv.ne.true-(i*2)) then
      write(6,*) i,conv,true-(i*2),'3 ** ng **'
      stop
      endif
      conv=px(8,i)
      if (conv.ne.true-(i*3)) then
      write(6,*) i,conv,true-(i*3),'4 ** ng **'
      stop
      endif
      conv=px(9,i)
      if (conv.ne.true-(i*4)) then
      write(6,*) i,conv,true-(i*4),'5 ** ng **'
      stop
      endif
      conv=px(10,i)
      if (conv.ne.true-(i*5)) then
      write(6,*) i,conv,true-(i*5),'6 ** ng **'
      stop
      endif
      conv=px(11,i)
      if (conv.ne.true-(i*6)) then
      write(6,*) i,conv,true-(i*6),'7 ** ng **'
      stop
      endif
      conv=px(12,i)
      if (conv.ne.true-(i*7)) then
      write(6,*) i,conv,true-(i*7),'8 ** ng **'
      stop
      endif
      conv=px(13,i)
      if (conv.ne.true-(i*8)) then
      write(6,*) i,conv,true-(i*8),'9 ** ng **'
      stop
      endif
      conv=px(14,i)
      if (conv.ne.true-(i*9)) then
      write(6,*) i,conv,true-(i*9),'10 ** ng **'
      stop
      endif
      true=true+1.00000
   20 continue
      write(6,*) '** ok **'
      stop
      end
      subroutine init
      implicit  real*8(a-h,o-z)
      integer e,f
      common /qa8/ x(1001), y(1001), z(1001), u(500),
     . px(15,100),cx(15,100),u1(5,22,2),u2(5,22,2),u3(5,22,2),
     . b(64,8),bnk1(5), c(64,8),bnk2(5), p(4,512),bnk3(5), h(64,8),
     .        bnk4(5), e (192),bnk5(5), f(192),
     . ex(67),dumdum(160),rh(67), dex(67), vx(150), xx(150), grd(150)
     . ,dum(8000)
      do 180 k=1,1001
      u(k) = 0.00025
      x(k) = 1.11
      y(k) = 1.123
  180 z(k) = 0.321
      do 185 k=1,15
      do 185 l=1,100
      px(k,l) = l
      cx(k,l) = l
  185 continue
      do 190 j=1,5
      do 190 k=1,22
      do 190 l=1,2
      u1(j,k,l) = k
      u2(j,k,l) = k + k
      u3(j,k,l) = k + k + k
  190 continue
      do 195 j=1,64
      do 195 k=1,8
      b(j,k) = 1.00025
      c(j,k) = 1.00025
      h(j,k) = 1.00025
  195 continue
      do 200 j=1,5
      bnk1(j) = j*100
      bnk2(j) = j*110
      bnk3(j) = j*120
      bnk4(j) = j*130
      bnk5(j) = j*140
  200 continue
      do 205 j=1,4
      do 205 k=1,512
      p(j,k) = 1.00025
  205 continue
      do 210 j=1,192
      e(j) = 1
      f(j) = 1
  210 continue
      do 215 j=1,67
      ex(j) = j
      rh(j) = j
      dex(j) = j
  215 continue
      do 220 j=1,150
      vx(j) = 0.001
      xx(j) = 20.001
      grd(j) = 3 + (j/8)
  220 continue
      return
      end
      subroutine initp(loopno)
      implicit  real*8(a-h,o-z)
      integer e,f
      common /qa8/ x(1001), y(1001), z(1001), u(500),
     . px(15,100),cx(15,100),u1(5,22,2),u2(5,22,2),u3(5,22,2),
     . b(64,8),bnk1(5), c(64,8),bnk2(5), p(4,512),bnk3(5), h(64,8),
     .        bnk4(5), e (192),bnk5(5), f(192),
     . ex(67),dumdum(160),rh(67), dex(67), vx(150), xx(150), grd(150)
     . ,dum(8000)
      go to (1,2,3,4,5,6,7,8,9,10,11,12,13,14),loopno
    1 continue
    2 continue
    3 continue
    7 continue
    9 continue
   12 continue
      return
    4 continue
    5 continue
    6 continue
   11 continue
      do 180 k=1,1000,2
      x(k  ) = 1.11
      x(k+1) = 1.11
  180 continue
      return
   10 continue
      do 185 l=1,100
      px( 5,l) = l
      px( 6,l) = l
      px( 7,l) = l
      px( 8,l) = l
      px( 9,l) = l
      px(10,l) = l
      px(11,l) = l
      px(12,l) = l
      px(13,l) = l
  185 continue
      return
    8 continue
      do 190 j=1,5
      do 190 k=1,22
      u1(j,k,1) = k
      u2(j,k,1) = k + k
      u3(j,k,1) = k + k + k
      u1(j,k,2) = k
      u2(j,k,2) = k + k
      u3(j,k,2) = k + k + k
  190 continue
      return
   13 continue
      do 195 k=1,8
      do 195 j=1,64
      h(j,k) = 1.00025
  195 continue
      do 205 k=1,512
      p(1,k) = 1.00025
      p(2,k) = 1.00025
      p(3,k) = 1.00025
      p(4,k) = 1.00025
  205 continue
      return
   14 continue
      do 215 j=1,67
      rh(j) = j
  215 continue
      do 220 j=1,150
      vx(j) = 0.001
      xx(j) = 20.001
  220 continue
      return
      end
