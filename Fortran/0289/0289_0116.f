      program main
      implicit  real*8(a-h,o-z)
      real*4  true1,conv,true2,true3,true4,true5,true6
      integer e,f
      parameter (nloop=10)
      dimension du1(25),du2(25),du3(25)
      common /qa8/ x(1001),y(1001),z(1001),u(500),
     . px(15,100),cx(15,100),u1(5,22,2),u2(5,22,2),u3(5,22,2),
     . b(64,8),bnk1(5), c(64,8),bnk2(5), p(4,512),bnk3(5), h(64,8),
     .        bnk4(5), e (192),bnk5(5), f(192),
     . ex(67),dumdum(160),rh(67), dex(67), vx(150), xx(150), grd(150)
     . ,dum(8000)
      true1=2.0
      true2=4.0
      true3=6.0
      true4=3.8200002
      true5=3.9140000
      true6=4.2940000
      r=4.86
      t=276.0
      sig=0.8
      a11=0.5
      a12=0.33
      a13=0.25
      a21=0.20
      a22=0.167
      a23=0.141
      a31=0.125
      a32=0.111
      a33=0.10
      call init
      do 10 jax=1,nloop
      call initp(8)
      nl1=1
      nl2=2
      do 8 kx=2,3
      do 8 ky=2,21
      du1(ky)=u1(kx,ky+1,nl1) - u1(kx,ky-1,nl1)
      du2(ky)=u2(kx,ky+1,nl1) - u2(kx,ky-1,nl1)
      du3(ky)=u3(kx,ky+1,nl1) - u3(kx,ky-1,nl1)
      u1(kx,ky,nl2)=u1(kx,ky,nl1)+a11*du1(ky)+a12*du2(ky)+a13*du3(ky)
     .+sig*(u1(kx+1,ky,nl1)-2.*u1(kx,ky,nl1)+u1(kx-1,ky,nl1))
      u2(kx,ky,nl2)=u2(kx,ky,nl1)+a21*du1(ky)+a22*du2(ky)+a23*du3(ky)
     .+sig*(u2(kx+1,ky,nl1)-2.*u2(kx,ky,nl1)+u2(kx-1,ky,nl1))
      u3(kx,ky,nl2)=u3(kx,ky,nl1)+a31*du1(ky)+a32*du2(ky)+a33*du3(ky)
     .+sig*(u3(kx+1,ky,nl1)-2.*u3(kx,ky,nl1)+u3(kx-1,ky,nl1))
   8  continue
  10  continue
      cont5=2
      cont6=2
      do 20 kx=2,3
      do 20 ky=2,21
      conv=du1(ky)
      if (conv.ne.true1) then
      write(6,*) kx,ky,'conv=',conv,'true1=',true1,'1 ** ng **'
      stop
      endif
      conv=du2(ky)
      if (conv.ne.true2) then
      write(6,*) kx,ky,'conv=',conv,'true2=',true2,'2 ** ng **'
      stop
      endif
      conv=du3(ky)
      if (conv.ne.true3) then
      write(6,*) kx,ky,'conv=',conv,'true3=',true3,'3 ** ng **'
      stop
      endif
      conv=u1(kx,ky,2)
      if (abs((conv-(true4+ky))/conv).ge.0.000001000) then
      write(6,*) kx,ky,'conv=',conv,true4+ky,'4 ** ng4 **'
      stop
      endif
      conv=u2(kx,ky,2)
      if (cont5.eq.kx) then
      true5=true5+2.0
      else
      cont5=kx
      true5=5.9140000
      endif
      if (abs(conv-true5).gt.1.0e-5) then
      write(6,*) kx,ky,'conv=',conv,true5,'5 ** ng **'
      stop
      endif
      conv=u3(kx,ky,2)
      if (cont6.eq.kx) then
      true6=true6+3.0
      else
      cont6=kx
      true6=7.2940000
      endif
      if (abs(conv-true6).gt.1.0e-5) then
      write(6,*) kx,ky,'conv=',conv,true6,'6 ** ng **'
      stop
      endif
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
