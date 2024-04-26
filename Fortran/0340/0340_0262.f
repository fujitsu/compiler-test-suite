      program main
      integer*4  x0(10),x1(10),x2(10),x3(10),x4(10),x5(10),
     &        y0(10),y1(10),y2(10),y3(10),y4(10),y5(10),
     &        z0(10),z1(10),z2(10),z3(10),z4(10),z5(10)
      integer*4  a00(10),a01(10),a02(10),a03(10),a04(10),
     &        a05(10),a06(10),a07(10),a08(10),a09(10),
     &        a10(10),a11(10),a12(10),a13(10),a14(10),
     &        a15(10),a16(10),a17(10),a18(10),a19(10),
     &        a20(10),a21(10),a22(10),a23(10),a24(10),
     &        a25(10),a26(10),a27(10),a28(10),a29(10),
     &        a30(10)
      integer*4  res,result
      data    result/190530.000/


      do i=1,10
         x0(i)=0+i
         y0(i)=0+i
         z0(i)=0+i
         x1(i)=1+i
         y1(i)=1+i
         z1(i)=1+i
         x2(i)=2+i
         y2(i)=2+i
         z2(i)=2+i
         x3(i)=3+i
         y3(i)=3+i
         z3(i)=3+i
         x4(i)=4+i
         y4(i)=4+i
         z4(i)=4+i
         x5(i)=5+i
         y5(i)=5+i
         z5(i)=5+i
      enddo
      do i=1,10
         a00(i)=x0(i)*(x1(i)+x2(i)+x3(i))
     &         +x1(i)*(y1(i)+y2(i)+y3(i))
     &         +x2(i)*(z1(i)+z2(i)+z3(i))
         a01(i)=x3(i)*(x1(i)+x2(i)+x3(i))
     &         +x4(i)*(y1(i)+y2(i)+y3(i))
     &         +x5(i)*(z1(i)+z2(i)+z3(i))
         a02(i)=y0(i)*(x1(i)+x2(i)+x3(i))
     &         +y1(i)*(y1(i)+y2(i)+y3(i))
     &         +y2(i)*(z1(i)+z2(i)+z3(i))
         a03(i)=y3(i)*(x1(i)+x2(i)+x3(i))
     &         +y4(i)*(y1(i)+y2(i)+y3(i))
     &         +y5(i)*(z1(i)+z2(i)+z3(i))
         a04(i)=z0(i)*(x1(i)+x2(i)+x3(i))
     &         +z1(i)*(y1(i)+y2(i)+y3(i))
     &         +z2(i)*(z1(i)+z2(i)+z3(i))
         a05(i)=z3(i)*(x1(i)+x2(i)+x3(i))
     &         +z4(i)*(y1(i)+y2(i)+y3(i))
     &         +z5(i)*(z1(i)+z2(i)+z3(i))
         a06(i)=x1(i)*(x1(i)+x2(i)+x3(i))
     &         +x2(i)*(y1(i)+y2(i)+y3(i))
     &         +x3(i)*(z1(i)+z2(i)+z3(i))
         a07(i)=x4(i)*(x1(i)+x2(i)+x3(i))
     &         +x5(i)*(y1(i)+y2(i)+y3(i))
     &         +x0(i)*(z1(i)+z2(i)+z3(i))
         a08(i)=y1(i)*(x1(i)+x2(i)+x3(i))
     &         +y2(i)*(y1(i)+y2(i)+y3(i))
     &         +y3(i)*(z1(i)+z2(i)+z3(i))
         a09(i)=y4(i)*(x1(i)+x2(i)+x3(i))
     &         +y5(i)*(y1(i)+y2(i)+y3(i))
     &         +y0(i)*(z1(i)+z2(i)+z3(i))
         a10(i)=z1(i)*(x1(i)+x2(i)+x3(i))
     &         +z2(i)*(y1(i)+y2(i)+y3(i))
     &         +z3(i)*(z1(i)+z2(i)+z3(i))
         a11(i)=z4(i)*(x1(i)+x2(i)+x3(i))
     &         +z5(i)*(y1(i)+y2(i)+y3(i))
     &         +z2(i)*(z1(i)+z2(i)+z3(i))
         a12(i)=x2(i)*(x1(i)+x2(i)+x3(i))
     &         +x3(i)*(y1(i)+y2(i)+y3(i))
     &         +x4(i)*(z1(i)+z2(i)+z3(i))
         a13(i)=x5(i)*(x1(i)+x2(i)+x3(i))
     &         +x0(i)*(y1(i)+y2(i)+y3(i))
     &         +x1(i)*(z1(i)+z2(i)+z3(i))
         a14(i)=y2(i)*(x1(i)+x2(i)+x3(i))
     &         +y3(i)*(y1(i)+y2(i)+y3(i))
     &         +y4(i)*(z1(i)+z2(i)+z3(i))
         a15(i)=y5(i)*(x1(i)+x2(i)+x3(i))
     &         +y0(i)*(y1(i)+y2(i)+y3(i))
     &         +y1(i)*(z1(i)+z2(i)+z3(i))
         a16(i)=z2(i)*(x1(i)+x2(i)+x3(i))
     &         +z3(i)*(y1(i)+y2(i)+y3(i))
     &         +z4(i)*(z1(i)+z2(i)+z3(i))
         a17(i)=z5(i)*(x1(i)+x2(i)+x3(i))
     &         +z0(i)*(y1(i)+y2(i)+y3(i))
     &         +z1(i)*(z1(i)+z2(i)+z3(i))
         a18(i)=x3(i)*(x1(i)+x2(i)+x3(i))
     &         +x4(i)*(y1(i)+y2(i)+y3(i))
     &         +x5(i)*(z1(i)+z2(i)+z3(i))
         a19(i)=x0(i)*(x1(i)+x2(i)+x3(i))
     &         +x1(i)*(y1(i)+y2(i)+y3(i))
     &         +x2(i)*(z1(i)+z2(i)+z3(i))
         a20(i)=y3(i)*(x1(i)+x2(i)+x3(i))
     &         +y4(i)*(y1(i)+y2(i)+y3(i))
     &         +y5(i)*(z1(i)+z2(i)+z3(i))
         a21(i)=y0(i)*(x1(i)+x2(i)+x3(i))
     &         +y1(i)*(y1(i)+y2(i)+y3(i))
     &         +y2(i)*(z1(i)+z2(i)+z3(i))
         a22(i)=z3(i)*(x1(i)+x2(i)+x3(i))
     &         +z4(i)*(y1(i)+y2(i)+y3(i))
     &         +z5(i)*(z1(i)+z2(i)+z3(i))
         a23(i)=z0(i)*(x1(i)+x2(i)+x3(i))
     &         +z1(i)*(y1(i)+y2(i)+y3(i))
     &         +z2(i)*(z1(i)+z2(i)+z3(i))
         a24(i)=x4(i)*(x1(i)+x2(i)+x3(i))
     &         +x5(i)*(y1(i)+y2(i)+y3(i))
     &         +x0(i)*(z1(i)+z2(i)+z3(i))
         a25(i)=x1(i)*(x1(i)+x2(i)+x3(i))
     &         +x2(i)*(y1(i)+y2(i)+y3(i))
     &         +x3(i)*(z1(i)+z2(i)+z3(i))
         a26(i)=y4(i)*(x1(i)+x2(i)+x3(i))
     &         +y5(i)*(y1(i)+y2(i)+y3(i))
     &         +y0(i)*(z1(i)+z2(i)+z3(i))
         a27(i)=y1(i)*(x1(i)+x2(i)+x3(i))
     &         +y2(i)*(y1(i)+y2(i)+y3(i))
     &         +y3(i)*(z1(i)+z2(i)+z3(i))
         a28(i)=z4(i)*(x1(i)+x2(i)+x3(i))
     &         +z5(i)*(y1(i)+y2(i)+y3(i))
     &         +z0(i)*(z1(i)+z2(i)+z3(i))
         a29(i)=z1(i)*(x1(i)+x2(i)+x3(i))
     &         +z2(i)*(y1(i)+y2(i)+y3(i))
     &         +z3(i)*(z1(i)+z2(i)+z3(i))
         a30(i)=x5(i)*(x1(i)+x2(i)+x3(i))
     &         +x0(i)*(y1(i)+y2(i)+y3(i))
     &         +x1(i)*(z1(i)+z2(i)+z3(i))
      enddo
      res=0

      do i=1,10
         res=res+a00(i)+a01(i)+a02(i)+a03(i)+a04(i)+
     &           a05(i)+a06(i)+a07(i)+a08(i)+a09(i)+
     &           a10(i)+a11(i)+a12(i)+a13(i)+a14(i)+
     &           a15(i)+a16(i)+a17(i)+a18(i)+a19(i)+
     &           a20(i)+a21(i)+a22(i)+a23(i)+a24(i)+
     &           a25(i)+a26(i)+a27(i)+a28(i)+a29(i)+
     &           a30(i)
      enddo

      if (abs(res-result)>0.001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
 20   continue
      end
