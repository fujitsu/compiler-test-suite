       call s1
       print *,'pass'
       end
       subroutine s1
       end
      subroutine hrg117(lovl,kload,wrkbar,sigh,epsh,sk,
     1                  res,c,elasm0,elasm1,xyz,disp,dispt,b1,b2,b3,
     2                  ismall,iupdat,iasmbl)
      implicit real*8 (a-h,o-z)
      common/elmcom/
     * ianels, ianiso, ibxa,   icolps, icomps,
     * icrack, ictrns, idamag, ianmat, igenpl,
     * iherr,  intel,  intin,  intpre, iort,
     * ipela,  irheol, ishell, isnte,  isotrp,
     * ityp,   iupcls, ivisc,  ivisel, jcamcl,
     * jhip,   joakr,  joakrm, jogden, jsoil,
     * jtype,  jviscp, jvisel, kinhrd, lbend,
     * lclass, lheat,  lnoint, lrebar, matno,
     * mats,   mohrc,  mooney, mroz,   ncrdel,
     * ndegel, ndi,    ngenel, nnode,  nomid,
     * noniso, kkdum1, nregs,  nshear, nstran,
     * ntshr,  ipgrcr, ngens,  jparel, jhoure,
     * jfoam
      dimension  sigh(12),epsh(12),sk(24,24),res(3,8),c(6,6),
     1           elasm0(6,6),elasm1(6,6),xyz(3,8),disp(3,8),
     2           dispt(3,8),h1(8),h2(8),h3(8),h4(8),gamma1(8),
     3           gamma2(8),gamma3(8),gamma4(8),iperm(8,8),x(3,8),
     4           b1(8),b2(8),b3(8)
      data h1 /+1.0d0,+1.0d0,-1.0d0,-1.0d0,-1.0d0,-1.0d0,+1.0d0,+1.0d0/
      data h2 /+1.0d0,-1.0d0,-1.0d0,+1.0d0,-1.0d0,+1.0d0,+1.0d0,-1.0d0/
      data h3 /+1.0d0,-1.0d0,+1.0d0,-1.0d0,+1.0d0,-1.0d0,+1.0d0,-1.0d0/
      data h4 /-1.0d0,+1.0d0,-1.0d0,+1.0d0,+1.0d0,-1.0d0,+1.0d0,-1.0d0/
      data iperm /1,2,3,4,5,6,7,8,
     1            2,3,4,1,6,7,8,5,
     2            3,4,1,2,7,8,5,6,
     3            4,1,2,3,8,5,6,7,
     4            5,8,7,6,1,4,3,2,
     5            6,5,8,7,2,1,4,3,
     6            7,6,5,8,3,2,1,4,
     7            8,7,6,5,4,3,2,1/
      do 10 i1=1,8
      x(1,i1) = xyz(1,i1)
      x(2,i1) = xyz(2,i1)
      x(3,i1) = xyz(3,i1)
10    continue
      if(ismall.ne.0.or.iupdat.ne.0) go to 200
      if(lovl.eq.4) then
      do 20 i1=1,8
      x(1,i1) = x(1,i1) + dispt(1,i1) + disp(1,i1)
      x(2,i1) = x(2,i1) + dispt(2,i1) + disp(2,i1)
      x(3,i1) = x(3,i1) + dispt(3,i1) + disp(3,i1)
20    continue
      endif
      if(lovl.eq.6) then
      do 30 i1=1,8
      x(1,i1) = x(1,i1) + dispt(1,i1)
      x(2,i1) = x(2,i1) + dispt(2,i1)
      x(3,i1) = x(3,i1) + dispt(3,i1)
30    continue
      endif
  200 continue
      do 210 i1=1,8
      l1 = iperm(1,i1)
      l2 = iperm(2,i1)
      l3 = iperm(3,i1)
      l4 = iperm(4,i1)
      l5 = iperm(5,i1)
      l6 = iperm(6,i1)
      l7 = iperm(7,i1)
      l8 = iperm(8,i1)
      b1(i1) = x(2,l2)*(x(3,l6) - x(3,l3) + x(3,l5) - x(3,l4))
     1       + x(2,l4)*(x(3,l3) - x(3,l8) + x(3,l2) - x(3,l5))
     2       + x(2,l5)*(x(3,l8) - x(3,l6) + x(3,l4) - x(3,l2))
     3       + x(2,l3)*(x(3,l2) - x(3,l4))
     4       + x(2,l6)*(x(3,l5) - x(3,l2))
     5       + x(2,l8)*(x(3,l4) - x(3,l5))
      b2(i1) = x(3,l2)*(x(1,l6) - x(1,l3) + x(1,l5) - x(1,l4))
     1       + x(3,l4)*(x(1,l3) - x(1,l8) + x(1,l2) - x(1,l5))
     2       + x(3,l5)*(x(1,l8) - x(1,l6) + x(1,l4) - x(1,l2))
     3       + x(3,l3)*(x(1,l2) - x(1,l4))
     4       + x(3,l6)*(x(1,l5) - x(1,l2))
     5       + x(3,l8)*(x(1,l4) - x(1,l5))
      b3(i1) = x(1,l2)*(x(2,l6) - x(2,l3) + x(2,l5) - x(2,l4))
     1       + x(1,l4)*(x(2,l3) - x(2,l8) + x(2,l2) - x(2,l5))
     2       + x(1,l5)*(x(2,l8) - x(2,l6) + x(2,l4) - x(2,l2))
     3       + x(1,l3)*(x(2,l2) - x(2,l4))
     4       + x(1,l6)*(x(2,l5) - x(2,l2))
     5       + x(1,l8)*(x(2,l4) - x(2,l5))
  210 continue
      vol12 = b1(1)*x(1,1) + b1(2)*x(1,2) + b1(3)*x(1,3) + b1(4)*x(1,4)
     1      + b1(5)*x(1,5) + b1(6)*x(1,6) + b1(7)*x(1,7) + b1(8)*x(1,8)
      vol12   = 1.0d0/vol12
      do 220 i1=1,8
      b1(i1) = b1(i1)*vol12
      b2(i1) = b2(i1)*vol12
      b3(i1) = b3(i1)*vol12
  220 continue
      h4x = - x(1,1) + x(1,2) - x(1,3) + x(1,4)
     1      + x(1,5) - x(1,6) + x(1,7) - x(1,8)
      h4y = - x(2,1) + x(2,2) - x(2,3) + x(2,4)
     1      + x(2,5) - x(2,6) + x(2,7) - x(2,8)
      h4z = - x(3,1) + x(3,2) - x(3,3) + x(3,4)
     1      + x(3,5) - x(3,6) + x(3,7) - x(3,8)
      h4b1 = - b1(1) + b1(2) - b1(3) + b1(4)
     1       + b1(5) - b1(6) + b1(7) - b1(8)
      h4b2 = - b2(1) + b2(2) - b2(3) + b2(4)
     1       + b2(5) - b2(6) + b2(7) - b2(8)
      h4b3 = - b3(1) + b3(2) - b3(3) + b3(4)
     1       + b3(5) - b3(6) + b3(7) - b3(8)
      alpha = 1.0d0/(8.d0 - h4b1*h4x - h4b2*h4y - h4b3*h4z)
      do 320 i1=1,8
      gamma4(i1) = alpha*(h4(i1) - h4x*b1(i1) - h4y*b2(i1) - h4z*b3(i1))
  320 continue
      if(ismall.eq.1.and.iupdat.eq.0) go to 325
      do 330 i1=1,8
      b1(i1) = b1(i1) - h4b1*gamma4(i1)
      b2(i1) = b2(i1) - h4b2*gamma4(i1)
      b3(i1) = b3(i1) - h4b3*gamma4(i1)
  330 continue
  325 continue
      h1x = + x(1,1) + x(1,2) - x(1,3) - x(1,4)
     1      - x(1,5) - x(1,6) + x(1,7) + x(1,8)
      h1y = + x(2,1) + x(2,2) - x(2,3) - x(2,4)
     1      - x(2,5) - x(2,6) + x(2,7) + x(2,8)
      h1z = + x(3,1) + x(3,2) - x(3,3) - x(3,4)
     1      - x(3,5) - x(3,6) + x(3,7) + x(3,8)
      h2x = + x(1,1) - x(1,2) - x(1,3) + x(1,4)
     1      - x(1,5) + x(1,6) + x(1,7) - x(1,8)
      h2y = + x(2,1) - x(2,2) - x(2,3) + x(2,4)
     1      - x(2,5) + x(2,6) + x(2,7) - x(2,8)
      h2z = + x(3,1) - x(3,2) - x(3,3) + x(3,4)
     1      - x(3,5) + x(3,6) + x(3,7) - x(3,8)
      h3x = + x(1,1) - x(1,2) + x(1,3) - x(1,4)
     1      + x(1,5) - x(1,6) + x(1,7) - x(1,8)
      h3y = + x(2,1) - x(2,2) + x(2,3) - x(2,4)
     1      + x(2,5) - x(2,6) + x(2,7) - x(2,8)
      h3z = + x(3,1) - x(3,2) + x(3,3) - x(3,4)
     1      + x(3,5) - x(3,6) + x(3,7) - x(3,8)
      do 510 i1=1,8
      gamma1(i1) =
     1       0.125d0*(h1(i1) - h1x*b1(i1) - h1y*b2(i1) - h1z*b3(i1))
      gamma2(i1) =
     1       0.125d0*(h2(i1) - h2x*b1(i1) - h2y*b2(i1) - h2z*b3(i1))
      gamma3(i1) =
     1       0.125d0*(h3(i1) - h3x*b1(i1) - h3y*b2(i1) - h3z*b3(i1))
  510 continue
      f11 = (- x(1,1) + x(1,2) + x(1,3) - x(1,4)
     1      - x(1,5) + x(1,6) + x(1,7) - x(1,8))*0.125d0
      f12 = (- x(1,1) - x(1,2) + x(1,3) + x(1,4)
     1      - x(1,5) - x(1,6) + x(1,7) + x(1,8))*0.125d0
      f13 = (- x(1,1) - x(1,2) - x(1,3) - x(1,4)
     1      + x(1,5) + x(1,6) + x(1,7) + x(1,8))*0.125d0
      f21 = (- x(2,1) + x(2,2) + x(2,3) - x(2,4)
     1      - x(2,5) + x(2,6) + x(2,7) - x(2,8))*0.125d0
      f22 = (- x(2,1) - x(2,2) + x(2,3) + x(2,4)
     1      - x(2,5) - x(2,6) + x(2,7) + x(2,8))*0.125d0
      f23 = (- x(2,1) - x(2,2) - x(2,3) - x(2,4)
     1      + x(2,5) + x(2,6) + x(2,7) + x(2,8))*0.125d0
      f31 = (- x(3,1) + x(3,2) + x(3,3) - x(3,4)
     1      - x(3,5) + x(3,6) + x(3,7) - x(3,8))*0.125d0
      f32 = (- x(3,1) - x(3,2) + x(3,3) + x(3,4)
     1      - x(3,5) - x(3,6) + x(3,7) + x(3,8))*0.125d0
      f33 = (- x(3,1) - x(3,2) - x(3,3) - x(3,4)
     1      + x(3,5) + x(3,6) + x(3,7) + x(3,8))*0.125d0
      x1 = (- xyz(1,1) + xyz(1,2) + xyz(1,3) - xyz(1,4)
     1      - xyz(1,5) + xyz(1,6) + xyz(1,7) - xyz(1,8))*0.125d0
      x2 = (- xyz(1,1) - xyz(1,2) + xyz(1,3) + xyz(1,4)
     1      - xyz(1,5) - xyz(1,6) + xyz(1,7) + xyz(1,8))*0.125d0
      x3 = (- xyz(1,1) - xyz(1,2) - xyz(1,3) - xyz(1,4)
     1      + xyz(1,5) + xyz(1,6) + xyz(1,7) + xyz(1,8))*0.125d0
      y1 = (- xyz(2,1) + xyz(2,2) + xyz(2,3) - xyz(2,4)
     1      - xyz(2,5) + xyz(2,6) + xyz(2,7) - xyz(2,8))*0.125d0
      y2 = (- xyz(2,1) - xyz(2,2) + xyz(2,3) + xyz(2,4)
     1      - xyz(2,5) - xyz(2,6) + xyz(2,7) + xyz(2,8))*0.125d0
      y3 = (- xyz(2,1) - xyz(2,2) - xyz(2,3) - xyz(2,4)
     1      + xyz(2,5) + xyz(2,6) + xyz(2,7) + xyz(2,8))*0.125d0
      z1 = (- xyz(3,1) + xyz(3,2) + xyz(3,3) - xyz(3,4)
     1      - xyz(3,5) + xyz(3,6) + xyz(3,7) - xyz(3,8))*0.125d0
      z2 = (- xyz(3,1) - xyz(3,2) + xyz(3,3) + xyz(3,4)
     1      - xyz(3,5) - xyz(3,6) + xyz(3,7) + xyz(3,8))*0.125d0
      z3 = (- xyz(3,1) - xyz(3,2) - xyz(3,3) - xyz(3,4)
     1      + xyz(3,5) + xyz(3,6) + xyz(3,7) + xyz(3,8))*0.125d0
      xjac = x1*(y2*z3-y3*z2) + x2*(y3*z1-y1*z3) + x3*(y1*z2-y2*z1)
      xjac = 1.0d0/xjac
      g11 = (y2*z3 - z2*y3)*xjac
      g12 = (x3*z2 - x2*z3)*xjac
      g13 = (x2*y3 - y2*x3)*xjac
      g21 = (y3*z1 - y1*z3)*xjac
      g22 = (x1*z3 - x3*z1)*xjac
      g23 = (x3*y1 - y3*x1)*xjac
      g31 = (y1*z2 - z1*y2)*xjac
      g32 = (z1*x2 - x1*z2)*xjac
      g33 = (x1*y2 - y1*x2)*xjac
      d11 = c(1,1)
      d12 = c(1,2)
      d13 = c(1,3)
      d22 = c(2,2)
      d23 = c(2,3)
      d33 = c(3,3)
      d44 = c(4,4)
      d55 = c(5,5)
      d66 = c(6,6)
      if(kload.eq.1) then
      wrk = wrkbar
      bar = 0.3333d-02*(elasm1(1,1)+elasm1(2,2)+elasm1(3,3))
      if(dabs(wrk).lt.bar) then
      if(wrk.ne.0.d0) wrk = bar*wrk/dabs(wrk)
      if(wrk.eq.0.d0) wrk = bar
      endif
      w11 = elasm1(1,1) + wrk*2.d0
      w12 = elasm1(1,2) + wrk
      w13 = elasm1(1,3) + wrk
      w22 = elasm1(2,2) + wrk*2.d0
      w23 = elasm1(2,3) + wrk
      w33 = elasm1(3,3) + wrk*2.d0
      w44 = elasm1(4,4) + wrk/3.d0
      w55 = elasm1(5,5) + wrk/3.d0
      w66 = elasm1(6,6) + wrk/3.d0
      wjac= w11*(w22*w33 - w23*w23) + w12*(w23*w13 - w12*w33)
     1    + w13*(w12*w23 - w22*w13)
      fac1= wrk/wjac
      v11 = fac1*(w22*w33 - w23*w23)
      v12 = fac1*(w13*w23 - w12*w33)
      v13 = fac1*(w12*w23 - w22*w13)
      v22 = fac1*(w11*w33 - w13*w13)
      v23 = fac1*(w13*w12 - w11*w23)
      v33 = fac1*(w11*w22 - w12*w12)
      v44 = wrk/w44
      v55 = wrk/w55
      v66 = wrk/w66
      w11 = 2.0d0*v11 + v12 + v13
      w12 = 2.0d0*v12 + v22 + v23
      w13 = 2.0d0*v13 + v23 + v33
      w22 = 2.0d0*v22 + v12 + v23
      w23 = 2.0d0*v23 + v13 + v33
      w33 = 2.0d0*v33 + v13 + v23
      w44 = v44/3.0d0
      w55 = v55/3.0d0
      w66 = v66/3.0d0
      d11 = elasm1(1,1)*w11 + elasm1(1,2)*w12 + elasm1(1,3)*w13
      d12 = elasm1(1,1)*w12 + elasm1(1,2)*w22 + elasm1(1,3)*w23
      d13 = elasm1(1,1)*w13 + elasm1(1,2)*w23 + elasm1(1,3)*w33
      d22 = elasm1(1,2)*w12 + elasm1(2,2)*w22 + elasm1(2,3)*w23
      d23 = elasm1(1,2)*w13 + elasm1(2,2)*w23 + elasm1(2,3)*w33
      d33 = elasm1(1,3)*w13 + elasm1(2,3)*w23 + elasm1(3,3)*w33
      d44 = elasm1(4,4)*w44
      d55 = elasm1(5,5)*w55
      d66 = elasm1(6,6)*w66
      d12 = 0.0d0
      d13 = 0.0d0
      d23 = 0.0d0
      endif
      gf11 = g11*g11
      gf12 = g12*g12
      gf13 = g13*g13
      gf14 = g11*g12*2.d0
      gf15 = g12*g13*2.d0
      gf16 = g11*g13*2.d0
      gf21 = g21*g21
      gf22 = g22*g22
      gf23 = g23*g23
      gf24 = g21*g22*2.d0
      gf25 = g22*g23*2.d0
      gf26 = g21*g23*2.d0
      gf31 = g31*g31
      gf32 = g32*g32
      gf33 = g33*g33
      gf34 = g31*g32*2.d0
      gf35 = g32*g33*2.d0
      gf36 = g31*g33*2.d0
      gf41 = g11*g21
      gf42 = g12*g22
      gf43 = g13*g23
      gf44 = g11*g22 + g21*g12
      gf45 = g12*g23 + g22*g13
      gf46 = g11*g23 + g21*g13
      gf51 = g21*g31
      gf52 = g22*g32
      gf53 = g23*g33
      gf54 = g31*g22 + g21*g32
      gf55 = g22*g33 + g32*g23
      gf56 = g21*g33 + g31*g23
      gf61 = g11*g31
      gf62 = g12*g32
      gf63 = g13*g33
      gf64 = g11*g32 + g31*g12
      gf65 = g12*g33 + g32*g13
      gf66 = g11*g33 + g31*g13
      e11 = gf11*(gf11*d11 + gf12*d12 + gf13*d13)
     1    + gf12*(gf11*d12 + gf12*d22 + gf13*d23)
     2    + gf13*(gf11*d13 + gf12*d23 + gf13*d33)
     3    + gf14*gf14*d44 + gf15*gf15*d55 + gf16*gf16*d66
      e12 = gf11*(gf21*d11 + gf22*d12 + gf23*d13)
     1    + gf12*(gf21*d12 + gf22*d22 + gf23*d23)
     2    + gf13*(gf21*d13 + gf22*d23 + gf23*d33)
     3    + gf14*gf24*d44 + gf15*gf25*d55 + gf16*gf26*d66
      e13 = gf11*(gf31*d11 + gf32*d12 + gf33*d13)
     1    + gf12*(gf31*d12 + gf32*d22 + gf33*d23)
     2    + gf13*(gf31*d13 + gf32*d23 + gf33*d33)
     3    + gf14*gf34*d44 + gf15*gf35*d55 + gf16*gf36*d66
      e22 = gf21*(gf21*d11 + gf22*d12 + gf23*d13)
     1    + gf22*(gf21*d12 + gf22*d22 + gf23*d23)
     2    + gf23*(gf21*d13 + gf22*d23 + gf23*d33)
     3    + gf24*gf24*d44 + gf25*gf25*d55 + gf26*gf26*d66
      e23 = gf21*(gf31*d11 + gf32*d12 + gf33*d13)
     1    + gf22*(gf31*d12 + gf32*d22 + gf33*d23)
     2    + gf23*(gf31*d13 + gf32*d23 + gf33*d33)
     3    + gf24*gf34*d44 + gf25*gf35*d55 + gf26*gf36*d66
      e33 = gf31*(gf31*d11 + gf32*d12 + gf33*d13)
     1    + gf32*(gf31*d12 + gf32*d22 + gf33*d23)
     2    + gf33*(gf31*d13 + gf32*d23 + gf33*d33)
     3    + gf34*gf34*d44 + gf35*gf35*d55 + gf36*gf36*d66
      e44 = gf41*(gf41*d11 + gf42*d12 + gf43*d13)
     1    + gf42*(gf41*d12 + gf42*d22 + gf43*d23)
     2    + gf43*(gf41*d13 + gf42*d23 + gf43*d33)
     3    + gf44*gf44*d44 + gf45*gf45*d55 + gf46*gf46*d66
      e55 = gf51*(gf51*d11 + gf52*d12 + gf53*d13)
     1    + gf52*(gf51*d12 + gf52*d22 + gf53*d23)
     2    + gf53*(gf51*d13 + gf52*d23 + gf53*d33)
     3    + gf54*gf54*d44 + gf55*gf55*d55 + gf56*gf56*d66
      e66 = gf61*(gf61*d11 + gf62*d12 + gf63*d13)
     1    + gf62*(gf61*d12 + gf62*d22 + gf63*d23)
     2    + gf63*(gf61*d13 + gf62*d23 + gf63*d33)
     3    + gf64*gf64*d44 + gf65*gf65*d55 + gf66*gf66*d66
      ca22 = (e22 - e23*e23/e33)
      ca11 = (e11 - e13*e13/e33)
      ca12 = (e12 - e13*e23/e33)
      cb33 = (e33 - e23*e23/e22)
      cb11 = (e11 - e12*e12/e22)
      cb13 = (e13 - e12*e23/e22)
      cc33 = (e33 - e13*e13/e11)
      cc22 = (e22 - e12*e12/e11)
      cc23 = (e23 - e13*e12/e11)
      c11  = e11
      c22  = e22
      c33  = e33
      c44  = e44
      c55  = e55
      c66  = e66
      g1a = 0.0d0
      g2a = 0.0d0
      g3a = 0.0d0
      g1b = 0.0d0
      g2b = 0.0d0
      g3b = 0.0d0
      g1c = 0.0d0
      g2c = 0.0d0
      g3c = 0.0d0
      g1d = 0.0d0
      g2d = 0.0d0
      g3d = 0.0d0
      do 520 i2=1,8
      disp1 = disp(1,i2)
      disp2 = disp(2,i2)
      disp3 = disp(3,i2)
      g1a = g1a + gamma1(i2)*disp1
      g2a = g2a + gamma1(i2)*disp2
      g3a = g3a + gamma1(i2)*disp3
      g1b = g1b + gamma2(i2)*disp1
      g2b = g2b + gamma2(i2)*disp2
      g3b = g3b + gamma2(i2)*disp3
      g1c = g1c + gamma3(i2)*disp1
      g2c = g2c + gamma3(i2)*disp2
      g3c = g3c + gamma3(i2)*disp3
      g1d = g1d + gamma4(i2)*disp1
      g2d = g2d + gamma4(i2)*disp2
      g3d = g3d + gamma4(i2)*disp3
  520 continue
      eps1  = f11*g1a + f21*g2a + f31*g3a
      eps2  = f12*g1a + f22*g2a + f32*g3a
      eps3  = f13*g1a + f23*g2a + f33*g3a
      eps4  = f11*g1b + f21*g2b + f31*g3b
      eps5  = f12*g1b + f22*g2b + f32*g3b
      eps6  = f13*g1b + f23*g2b + f33*g3b
      eps7  = f11*g1c + f21*g2c + f31*g3c
      eps8  = f12*g1c + f22*g2c + f32*g3c
      eps9  = f13*g1c + f23*g2c + f33*g3c
      eps10 = f11*g1d + f21*g2d + f31*g3d
      eps11 = f12*g1d + f22*g2d + f32*g3d
      eps12 = f13*g1d + f23*g2d + f33*g3d
      ept1  = epsh(1)  + eps1
      ept2  = epsh(2)  + eps2
      ept3  = epsh(3)  + eps3
      ept4  = epsh(4)  + eps4
      ept5  = epsh(5)  + eps5
      ept6  = epsh(6)  + eps6
      ept7  = epsh(7)  + eps7
      ept8  = epsh(8)  + eps8
      ept9  = epsh(9)  + eps9
      ept10 = epsh(10) + eps10
      ept11 = epsh(11) + eps11
      ept12 = epsh(12) + eps12
      sig1  = sigh(1)  +(c44+c66)*eps1  + c44     *eps5 + c66     *eps9
      sig2  = sigh(2)  + ca22    *eps2  + ca12    *eps4
      sig3  = sigh(3)  + cb33    *eps3  + cb13    *eps7
      sig4  = sigh(4)  + ca12    *eps2  + ca11    *eps4
      sig5  = sigh(5)  + c44     *eps1  +(c44+c55)*eps5 + c55     *eps9
      sig6  = sigh(6)  + cc33    *eps6  + cc23    *eps8
      sig7  = sigh(7)  + cb13    *eps3  + cb11    *eps7
      sig8  = sigh(8)  + cc23    *eps6  + cc22    *eps8
      sig9  = sigh(9)  + c66     *eps1  + c55     *eps5 +(c55+c66)*eps9
      sig10 = sigh(10) + c11     *eps10
      sig11 = sigh(11) + c22     *eps11
      sig12 = sigh(12) + c33     *eps12
      if((elasm0(1,1)**2 + elasm0(2,2)**2 + elasm0(3,3)**2).eq.0.d0)
     1go to 525
      test = (elasm1(1,1)**2 + elasm1(2,2)**2 + elasm1(3,3)**2
     1     -  elasm0(1,1)**2 - elasm0(2,2)**2 - elasm0(3,3)**2)
     2      /(elasm0(1,1)**2 + elasm0(2,2)**2 + elasm0(3,3)**2)
      if(dabs(test).gt.1.0d-03.and.kload.eq.0) then
      d11 = elasm0(1,1)
      d12 = elasm0(1,2)
      d13 = elasm0(1,3)
      d22 = elasm0(2,2)
      d23 = elasm0(2,3)
      d33 = elasm0(3,3)
      d44 = elasm0(4,4)
      d55 = elasm0(5,5)
      d66 = elasm0(6,6)
      e11 = gf11*(gf11*d11 + gf12*d12 + gf13*d13)
     1    + gf12*(gf11*d12 + gf12*d22 + gf13*d23)
     2    + gf13*(gf11*d13 + gf12*d23 + gf13*d33)
     3    + gf14*gf14*d44 + gf15*gf15*d55 + gf16*gf16*d66
      e12 = gf11*(gf21*d11 + gf22*d12 + gf23*d13)
     1    + gf12*(gf21*d12 + gf22*d22 + gf23*d23)
     2    + gf13*(gf21*d13 + gf22*d23 + gf23*d33)
     3    + gf14*gf24*d44 + gf15*gf25*d55 + gf16*gf26*d66
      e13 = gf11*(gf31*d11 + gf32*d12 + gf33*d13)
     1    + gf12*(gf31*d12 + gf32*d22 + gf33*d23)
     2    + gf13*(gf31*d13 + gf32*d23 + gf33*d33)
     3    + gf14*gf34*d44 + gf15*gf35*d55 + gf16*gf36*d66
      e22 = gf21*(gf21*d11 + gf22*d12 + gf23*d13)
     1    + gf22*(gf21*d12 + gf22*d22 + gf23*d23)
     2    + gf23*(gf21*d13 + gf22*d23 + gf23*d33)
     3    + gf24*gf24*d44 + gf25*gf25*d55 + gf26*gf26*d66
      e23 = gf21*(gf31*d11 + gf32*d12 + gf33*d13)
     1    + gf22*(gf31*d12 + gf32*d22 + gf33*d23)
     2    + gf23*(gf31*d13 + gf32*d23 + gf33*d33)
     3    + gf24*gf34*d44 + gf25*gf35*d55 + gf26*gf36*d66
      e33 = gf31*(gf31*d11 + gf32*d12 + gf33*d13)
     1    + gf32*(gf31*d12 + gf32*d22 + gf33*d23)
     2    + gf33*(gf31*d13 + gf32*d23 + gf33*d33)
     3    + gf34*gf34*d44 + gf35*gf35*d55 + gf36*gf36*d66
      e44 = gf41*(gf41*d11 + gf42*d12 + gf43*d13)
     1    + gf42*(gf41*d12 + gf42*d22 + gf43*d23)
     2    + gf43*(gf41*d13 + gf42*d23 + gf43*d33)
     3    + gf44*gf44*d44 + gf45*gf45*d55 + gf46*gf46*d66
      e55 = gf51*(gf51*d11 + gf52*d12 + gf53*d13)
     1    + gf52*(gf51*d12 + gf52*d22 + gf53*d23)
     2    + gf53*(gf51*d13 + gf52*d23 + gf53*d33)
     3    + gf54*gf54*d44 + gf55*gf55*d55 + gf56*gf56*d66
      e66 = gf61*(gf61*d11 + gf62*d12 + gf63*d13)
     1    + gf62*(gf61*d12 + gf62*d22 + gf63*d23)
     2    + gf63*(gf61*d13 + gf62*d23 + gf63*d33)
     3    + gf64*gf64*d44 + gf65*gf65*d55 + gf66*gf66*d66
      ea22 = (e22 - e23*e23/e33) - ca22
      ea11 = (e11 - e13*e13/e33) - ca11
      ea12 = (e12 - e13*e23/e33) - ca12
      eb33 = (e33 - e23*e23/e22) - cb33
      eb11 = (e11 - e12*e12/e22) - cb11
      eb13 = (e13 - e12*e23/e22) - cb13
      ec33 = (e33 - e13*e13/e11) - cc33
      ec22 = (e22 - e12*e12/e11) - cc22
      ec23 = (e23 - e13*e12/e11) - cc23
      e11  = e11 - c11
      e22  = e22 - c22
      e33  = e33 - c33
      e44  = e44 - c44
      e55  = e55 - c55
      e66  = e66 - c66
      sig1  = sig1  -(e44+e66)*epsh(1)  - e44     *epsh(5)
     1              - e66     *epsh(9)
      sig2  = sig2  - ea22    *epsh(2)  - ea12    *epsh(4)
      sig3  = sig3  - eb33    *epsh(3)  - eb13    *epsh(7)
      sig4  = sig4  - ea12    *epsh(2)  - ea11    *epsh(4)
      sig5  = sig5  - e44     *epsh(1)  -(e44+e55)*epsh(5)
     1              - e55     *epsh(9)
      sig6  = sig6  - ec33    *epsh(6)  - ec23    *epsh(8)
      sig7  = sig7  - eb13    *epsh(3)  - eb11    *epsh(7)
      sig8  = sig8  - ec23    *epsh(6)  - ec22    *epsh(8)
      sig9  = sig9  - e66     *epsh(1)  - e55     *epsh(5)
     1              -(e55+e66)*epsh(9)
      sig10 = sig10 - e11     *epsh(10)
      sig11 = sig11 - e22     *epsh(11)
      sig12 = sig12 - e33     *epsh(12)
      endif
525   continue
      if(lovl.eq.6) then
      sigh(1)  = sig1
      sigh(2)  = sig2
      sigh(3)  = sig3
      sigh(4)  = sig4
      sigh(5)  = sig5
      sigh(6)  = sig6
      sigh(7)  = sig7
      sigh(8)  = sig8
      sigh(9)  = sig9
      sigh(10) = sig10
      sigh(11) = sig11
      sigh(12) = sig12
      epsh(1)  = ept1
      epsh(2)  = ept2
      epsh(3)  = ept3
      epsh(4)  = ept4
      epsh(5)  = ept5
      epsh(6)  = ept6
      epsh(7)  = ept7
      epsh(8)  = ept8
      epsh(9)  = ept9
      epsh(10) = ept10
      epsh(11) = ept11
      epsh(12) = ept12
      endif
      xjac = 1.0d0/xjac
      fac1 = 8.d0*xjac/3.d0
      gg1aa = fac1*(f11*sig1  + f12*sig2  + f13*sig3 )
      gg2aa = fac1*(f21*sig1  + f22*sig2  + f23*sig3 )
      gg3aa = fac1*(f31*sig1  + f32*sig2  + f33*sig3 )
      gg1bb = fac1*(f11*sig4  + f12*sig5  + f13*sig6 )
      gg2bb = fac1*(f21*sig4  + f22*sig5  + f23*sig6 )
      gg3bb = fac1*(f31*sig4  + f32*sig5  + f33*sig6 )
      gg1cc = fac1*(f11*sig7  + f12*sig8  + f13*sig9 )
      gg2cc = fac1*(f21*sig7  + f22*sig8  + f23*sig9 )
      gg3cc = fac1*(f31*sig7  + f32*sig8  + f33*sig9 )
      gg1dd = fac1*(f11*sig10 + f12*sig11 + f13*sig12)/3.0d0
      gg2dd = fac1*(f21*sig10 + f22*sig11 + f23*sig12)/3.0d0
      gg3dd = fac1*(f31*sig10 + f32*sig11 + f33*sig12)/3.0d0
      if(lovl.eq.4) then
      do 565 i1=1,8
      res(1,i1) =-gg1aa*gamma1(i1) - gg1bb*gamma2(i1)
     1          - gg1cc*gamma3(i1) - gg1dd*gamma4(i1)
      res(2,i1) =-gg2aa*gamma1(i1) - gg2bb*gamma2(i1)
     1          - gg2cc*gamma3(i1) - gg2dd*gamma4(i1)
      res(3,i1) =-gg3aa*gamma1(i1) - gg3bb*gamma2(i1)
     1          - gg3cc*gamma3(i1) - gg3dd*gamma4(i1)
  565 continue
      endif
      if(lovl.eq.6) then
      do 570 i1=1,8
      res(1,i1) = gg1aa*gamma1(i1) + gg1bb*gamma2(i1)
     1          + gg1cc*gamma3(i1) + gg1dd*gamma4(i1)
      res(2,i1) = gg2aa*gamma1(i1) + gg2bb*gamma2(i1)
     1          + gg2cc*gamma3(i1) + gg2dd*gamma4(i1)
      res(3,i1) = gg3aa*gamma1(i1) + gg3bb*gamma2(i1)
     1          + gg3cc*gamma3(i1) + gg3dd*gamma4(i1)
  570 continue
      endif
      if(lovl.eq.6.or.iasmbl.eq.0) go to 999
      f1111 = f11*f11
      f1212 = f12*f12
      f1313 = f13*f13
      f2121 = f21*f21
      f2222 = f22*f22
      f2323 = f23*f23
      f2232 = f22*f32
      f3131 = f31*f31
      f3232 = f32*f32
      f3333 = f33*f33
      f1222 = f12*f22
      f1323 = f13*f23
      f1232 = f12*f32
      f1333 = f13*f33
      f2333 = f23*f33
      f1121 = f11*f21
      f1131 = f11*f31
      f2131 = f21*f31
      f1112 = f11*f12
      f2112 = f21*f12
      f3112 = f31*f12
      f1122 = f11*f22
      f2122 = f21*f22
      f3122 = f31*f22
      f1132 = f11*f32
      f2132 = f21*f32
      f3132 = f31*f32
      f1113 = f11*f13
      f2113 = f21*f13
      f3113 = f31*f13
      f1123 = f11*f23
      f2123 = f21*f23
      f3123 = f31*f23
      f1133 = f11*f33
      f2133 = f21*f33
      f3133 = f31*f33
      f1213 = f12*f13
      f2213 = f22*f13
      f3213 = f32*f13
      f1223 = f12*f23
      f2223 = f22*f23
      f3223 = f32*f23
      f1233 = f12*f33
      f2233 = f22*f33
      f3233 = f32*f33
      ca22 = ca22*fac1
      ca11 = ca11*fac1
      ca12 = ca12*fac1
      cb33 = cb33*fac1
      cb11 = cb11*fac1
      cb13 = cb13*fac1
      cc33 = cc33*fac1
      cc22 = cc22*fac1
      cc23 = cc23*fac1
      c11  = c11*fac1
      c22  = c22*fac1
      c33  = c33*fac1
      c44  = c44*fac1
      c55  = c55*fac1
      c66  = c66*fac1
      h11aa =  f1111 * (c44 + c66) + f1212 * ca22 + f1313 * cb33
      h12aa =  f1121 * (c44 + c66) + f1222 * ca22 + f1323 * cb33
      h13aa =  f1131 * (c44 + c66) + f1232 * ca22 + f1333 * cb33
      h22aa =  f2121 * (c44 + c66) + f2222 * ca22 + f2323 * cb33
      h23aa =  f2131 * (c44 + c66) + f2232 * ca22 + f2333 * cb33
      h33aa =  f3131 * (c44 + c66) + f3232 * ca22 + f3333 * cb33
      h11ab =  f1112 * c44 + f1112 * ca12
      h12ab =  f1122 * c44 + f2112 * ca12
      h13ab =  f1132 * c44 + f3112 * ca12
      h21ab =  f2112 * c44 + f1122 * ca12
      h22ab =  f2122 * c44 + f2122 * ca12
      h23ab =  f2132 * c44 + f3122 * ca12
      h31ab =  f3112 * c44 + f1132 * ca12
      h32ab =  f3122 * c44 + f2132 * ca12
      h33ab =  f3132 * c44 + f3132 * ca12
      h11ac =  f1113 * c66 + f1113 * cb13
      h12ac =  f1123 * c66 + f2113 * cb13
      h13ac =  f1133 * c66 + f3113 * cb13
      h21ac =  f2113 * c66 + f1123 * cb13
      h22ac =  f2123 * c66 + f2123 * cb13
      h23ac =  f2133 * c66 + f3123 * cb13
      h31ac =  f3113 * c66 + f1133 * cb13
      h32ac =  f3123 * c66 + f2133 * cb13
      h33ac =  f3133 * c66 + f3133 * cb13
      h11bb =  f1111 * ca11 + f1212 * (c44 + c55) + f1313 * cc33
      h12bb =  f1121 * ca11 + f1222 * (c44 + c55) + f1323 * cc33
      h13bb =  f1131 * ca11 + f1232 * (c44 + c55) + f1333 * cc33
      h22bb =  f2121 * ca11 + f2222 * (c44 + c55) + f2323 * cc33
      h23bb =  f2131 * ca11 + f2232 * (c44 + c55) + f2333 * cc33
      h33bb =  f3131 * ca11 + f3232 * (c44 + c55) + f3333 * cc33
      h11bc =  f1213 * c55 + f1213 * cc23
      h12bc =  f1223 * c55 + f2213 * cc23
      h13bc =  f1233 * c55 + f3213 * cc23
      h21bc =  f2213 * c55 + f1223 * cc23
      h22bc =  f2223 * c55 + f2223 * cc23
      h23bc =  f2233 * c55 + f3223 * cc23
      h31bc =  f3213 * c55 + f1233 * cc23
      h32bc =  f3223 * c55 + f2233 * cc23
      h33bc =  f3233 * c55 + f3233 * cc23
      h11cc =  f1111 * cb11 + f1212 * cc22 + f1313 * (c55 + c66)
      h12cc =  f1121 * cb11 + f1222 * cc22 + f1323 * (c55 + c66)
      h13cc =  f1131 * cb11 + f1232 * cc22 + f1333 * (c55 + c66)
      h22cc =  f2121 * cb11 + f2222 * cc22 + f2323 * (c55 + c66)
      h23cc =  f2131 * cb11 + f2232 * cc22 + f2333 * (c55 + c66)
      h33cc =  f3131 * cb11 + f3232 * cc22 + f3333 * (c55 + c66)
      h11dd = (f1111 * c11 + f1212 * c22 + f1313 * c33)/3.d0
      h12dd = (f1121 * c11 + f1222 * c22 + f1323 * c33)/3.d0
      h13dd = (f1131 * c11 + f1232 * c22 + f1333 * c33)/3.d0
      h22dd = (f2121 * c11 + f2222 * c22 + f2323 * c33)/3.d0
      h23dd = (f2131 * c11 + f2232 * c22 + f2333 * c33)/3.d0
      h33dd = (f3131 * c11 + f3232 * c22 + f3333 * c33)/3.d0
      do 580 i1=1,8
      k1 = 3*i1 - 2
      k2 = 3*i1 - 1
      k3 = 3*i1
        do 575 i2=1,i1
        l1 = 3*i2 - 2
        l2 = 3*i2 - 1
        l3 = 3*i2
        gaa = gamma1(i1)*gamma1(i2)
        gab = gamma1(i1)*gamma2(i2)
        gba = gamma2(i1)*gamma1(i2)
        gac = gamma1(i1)*gamma3(i2)
        gca = gamma3(i1)*gamma1(i2)
        gbb = gamma2(i1)*gamma2(i2)
        gbc = gamma2(i1)*gamma3(i2)
        gcb = gamma3(i1)*gamma2(i2)
        gcc = gamma3(i1)*gamma3(i2)
        gdd = gamma4(i1)*gamma4(i2)
        sk11 = h11aa*gaa + h11bb*gbb + h11cc*gcc + h11dd*gdd
     1       + h11ab*gab + h11ac*gac + h11bc*gbc
     2       + h11ab*gba + h11ac*gca + h11bc*gcb
        sk22 = h22aa*gaa + h22bb*gbb + h22cc*gcc + h22dd*gdd
     1       + h22ab*gab + h22ac*gac + h22bc*gbc
     2       + h22ab*gba + h22ac*gca + h22bc*gcb
        sk33 = h33aa*gaa + h33bb*gbb + h33cc*gcc + h33dd*gdd
     1       + h33ab*gab + h33ac*gac + h33bc*gbc
     2       + h33ab*gba + h33ac*gca + h33bc*gcb
        sk12 = h12aa*gaa + h12bb*gbb + h12cc*gcc + h12dd*gdd
     1       + h12ab*gab + h12ac*gac + h12bc*gbc
     2       + h21ab*gba + h21ac*gca + h21bc*gcb
        sk21 = h12aa*gaa + h12bb*gbb + h12cc*gcc + h12dd*gdd
     1       + h21ab*gab + h21ac*gac + h21bc*gbc
     2       + h12ab*gba + h12ac*gca + h12bc*gcb
        sk13 = h13aa*gaa + h13bb*gbb + h13cc*gcc + h13dd*gdd
     1       + h13ab*gab + h13ac*gac + h13bc*gbc
     2       + h31ab*gba + h31ac*gca + h31bc*gcb
        sk31 = h13aa*gaa + h13bb*gbb + h13cc*gcc + h13dd*gdd
     1       + h31ab*gab + h31ac*gac + h31bc*gbc
     2       + h13ab*gba + h13ac*gca + h13bc*gcb
        sk23 = h23aa*gaa + h23bb*gbb + h23cc*gcc + h23dd*gdd
     1       + h23ab*gab + h23ac*gac + h23bc*gbc
     2       + h32ab*gba + h32ac*gca + h32bc*gcb
        sk32 = h23aa*gaa + h23bb*gbb + h23cc*gcc + h23dd*gdd
     1       + h32ab*gab + h32ac*gac + h32bc*gbc
     2       + h23ab*gba + h23ac*gca + h23bc*gcb
        sk(k1,l1) = sk(k1,l1) + sk11
        sk(k2,l2) = sk(k2,l2) + sk22
        sk(k3,l3) = sk(k3,l3) + sk33
        sk(k1,l2) = sk(k1,l2) + sk12
        sk(k2,l3) = sk(k2,l3) + sk23
        sk(k1,l3) = sk(k1,l3) + sk13
        sk(k2,l1) = sk(k2,l1) + sk21
        sk(k3,l2) = sk(k3,l2) + sk32
        sk(k3,l1) = sk(k3,l1) + sk31
        sk(l1,k1) = sk(k1,l1)
        sk(l2,k1) = sk(k1,l2)
        sk(l3,k1) = sk(k1,l3)
        sk(l1,k2) = sk(k2,l1)
        sk(l2,k2) = sk(k2,l2)
        sk(l3,k2) = sk(k2,l3)
        sk(l1,k3) = sk(k3,l1)
        sk(l2,k3) = sk(k3,l2)
        sk(l3,k3) = sk(k3,l3)
  575   continue
  580 continue
  999 continue
      return
      end 
