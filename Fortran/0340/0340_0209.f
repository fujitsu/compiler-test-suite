      program main
      complex*8  x0(10,10),x1(10,10),x2(10,10),
     &        x3(10,10),x4(10,10),x5(10,10),
     &        y0(10,10),y1(10,10),y2(10,10),
     &        y3(10,10),y4(10,10),y5(10,10),
     &        z0(10,10),z1(10,10),z2(10,10),
     &        z3(10,10),z4(10,10),z5(10,10),
     &        a00(10,10),a01(10,10),a02(10,10),
     &        a03(10,10),a04(10,10),a05(10,10),
     &        a06(10,10),a07(10,10),a08(10,10),
     &        a09(10,10),a10(10,10),a11(10,10),
     &        a12(10,10),a13(10,10),a14(10,10),
     &        a15(10,10),a16(10,10),a17(10,10),
     &        a18(10,10),a19(10,10),a20(10,10),
     &        a21(10,10),a22(10,10),a23(10,10),
     &        a24(10,10),a25(10,10),a26(10,10),
     &        a27(10,10),a28(10,10),a29(10,10),
     &        a30(10,10)
      complex*8  res,result
      data    result/(831350.000,221925.000)/


      do j=1,10
       do i=1,10
         x0(i,j)=(0.0,-1.0)+cmplx(j,i)
         y0(i,j)=(0.0,-1.0)+cmplx(j,i)
         z0(i,j)=(0.0,-1.0)+cmplx(j,i)
         x1(i,j)=(1.0,-2.0)+cmplx(j,i)
         y1(i,j)=(1.0,-2.0)+cmplx(j,i)
         z1(i,j)=(1.0,-2.0)+cmplx(j,i)
         x2(i,j)=(2.0,-3.0)+cmplx(j,i)
         y2(i,j)=(2.0,-3.0)+cmplx(j,i)
         z2(i,j)=(2.0,-3.0)+cmplx(j,i)
         x3(i,j)=(3.0,-4.0)+cmplx(j,i)
         y3(i,j)=(3.0,-4.0)+cmplx(j,i)
         z3(i,j)=(3.0,-4.0)+cmplx(j,i)
         x4(i,j)=(4.0,-5.0)+cmplx(j,i)
         y4(i,j)=(4.0,-5.0)+cmplx(j,i)
         z4(i,j)=(4.0,-5.0)+cmplx(j,i)
         x5(i,j)=(5.0,-6.0)+cmplx(j,i)
         y5(i,j)=(5.0,-6.0)+cmplx(j,i)
         z5(i,j)=(5.0,-6.0)+cmplx(j,i)
       enddo
      enddo
      do j=1,10
       do i=1,10
         xx=x1(i,j)+x2(i,j)+x3(i,j)
         a00(i,j)=x0(i,j)*x1(i,j)+x2(i,j)*xx
         a01(i,j)=x3(i,j)*x4(i,j)+x5(i,j)*xx
         a02(i,j)=y0(i,j)*y1(i,j)+y2(i,j)*xx
         a03(i,j)=y3(i,j)*y4(i,j)+y5(i,j)*xx
         a04(i,j)=z0(i,j)*z1(i,j)+z2(i,j)*xx
         a05(i,j)=z3(i,j)*z4(i,j)+z5(i,j)*xx
         a06(i,j)=x1(i,j)*x2(i,j)+x3(i,j)*xx
         a07(i,j)=x4(i,j)*x5(i,j)+x0(i,j)*xx
         a08(i,j)=y1(i,j)*y2(i,j)+y3(i,j)*xx
         a09(i,j)=y4(i,j)*y5(i,j)+y0(i,j)*xx
         a10(i,j)=z1(i,j)*z2(i,j)+z3(i,j)*xx
         a11(i,j)=z4(i,j)*z5(i,j)+z0(i,j)*xx
         a12(i,j)=x2(i,j)*x3(i,j)+x4(i,j)*xx
         a13(i,j)=x5(i,j)*x0(i,j)+x1(i,j)*xx
         a14(i,j)=y2(i,j)*y3(i,j)+y4(i,j)*xx
         a15(i,j)=y5(i,j)*y0(i,j)+y1(i,j)*xx
         a16(i,j)=z2(i,j)*z3(i,j)+z4(i,j)*xx
         a17(i,j)=z5(i,j)*z0(i,j)+z1(i,j)*xx
         a18(i,j)=x3(i,j)*x4(i,j)+x5(i,j)*xx
         a19(i,j)=x0(i,j)*x1(i,j)+x2(i,j)*xx
         a20(i,j)=y3(i,j)*y4(i,j)+y5(i,j)*xx
         a21(i,j)=y0(i,j)*y1(i,j)+y2(i,j)*xx
         a22(i,j)=z3(i,j)*z4(i,j)+z5(i,j)*xx
         a23(i,j)=z0(i,j)*z1(i,j)+z2(i,j)*xx
         a24(i,j)=x4(i,j)*x5(i,j)+x0(i,j)*xx
         a25(i,j)=x1(i,j)*x2(i,j)+x3(i,j)*xx
         a26(i,j)=y4(i,j)*y5(i,j)+y0(i,j)*xx
         a27(i,j)=y1(i,j)*y2(i,j)+y3(i,j)*xx
         a28(i,j)=z4(i,j)*z5(i,j)+z0(i,j)*xx
         a29(i,j)=z1(i,j)*z2(i,j)+z3(i,j)*xx
         a30(i,j)=x5(i,j)*y5(i,j)+z5(i,j)*xx
       enddo
      enddo
      res=0

      do j=1,10
       do i=1,10
         res=res+a00(i,j)+a01(i,j)+a02(i,j)
     &          +a03(i,j)+a04(i,j)+a05(i,j)
     &          +a06(i,j)+a07(i,j)+a08(i,j)
     &          +a09(i,j)+a10(i,j)+a11(i,j)
     &          +a12(i,j)+a13(i,j)+a14(i,j)
     &          +a15(i,j)+a16(i,j)+a17(i,j)
     &          +a18(i,j)+a19(i,j)+a20(i,j)
     &          +a21(i,j)+a22(i,j)+a23(i,j)
     &          +a24(i,j)+a25(i,j)+a26(i,j)
     &          +a27(i,j)+a28(i,j)+a29(i,j)
     &          +a30(i,j)
       enddo
      enddo

      if (abs(res-result)>0.00001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
 20   continue
      end
