      program main
      integer*4  x0(10),x1(10),x2(10),x3(10),x4(10),x5(10),
     1        y0(10),y1(10),y2(10),y3(10),y4(10),y5(10),
     1        z0(10),z1(10),z2(10),z3(10),z4(10),z5(10)
      integer*4  a00(10),a01(10),a02(10),a03(10),a04(10),
     &        a05(10),a06(10),a07(10),a08(10),a09(10),
     &        a10(10),a11(10),a12(10),a13(10),a14(10),
     &        a15(10),a16(10),a17(10),a18(10),a19(10),
     &        a20(10),a21(10),a22(10),a23(10),a24(10),
     &        a25(10),a26(10),a27(10),a28(10),a29(10),
     &        a30(10)
      integer*4  a,b,c,res,result
      data    result/28140/


      do i=1,10
         x0(i)=0
         y0(i)=0
         z0(i)=0
         x1(i)=1
         y1(i)=1
         z1(i)=1
         x2(i)=2
         y2(i)=2
         z2(i)=2
         x3(i)=3
         y3(i)=3
         z3(i)=3
         x4(i)=4
         y4(i)=4
         z4(i)=4
         x5(i)=5
         y5(i)=5
         z5(i)=5
      enddo
      do i=1,10
         a = x0(i)*i + x1(i)
         b = x2(i)*i + x3(i)
         c = x4(i)*i + x5(i)
         a00(i)=x0(i)*a+y0(i)*b+z0(i)*c
         a01(i)=x1(i)*a+y1(i)*b+z1(i)*c
         a02(i)=x2(i)*a+y2(i)*b+z2(i)*c
         a03(i)=x3(i)*a+y3(i)*b+z3(i)*c
         a04(i)=x4(i)*a+y4(i)*b+z4(i)*c
         a05(i)=x5(i)*a+y5(i)*b+z5(i)*c
         a06(i)=x0(i)*a+y0(i)*b+z0(i)*c
         a07(i)=x1(i)*a+y1(i)*b+z1(i)*c
         a08(i)=x2(i)*a+y2(i)*b+z2(i)*c
         a09(i)=x3(i)*a+y3(i)*b+z3(i)*c
         a10(i)=x4(i)*a+y4(i)*b+z4(i)*c
         a11(i)=x5(i)*a+y5(i)*b+z5(i)*c
         a12(i)=x0(i)*a+y0(i)*b+z0(i)*c
         a13(i)=x1(i)*a+y1(i)*b+z1(i)*c
         a14(i)=x2(i)*a+y2(i)*b+z2(i)*c
         a15(i)=x3(i)*a+y3(i)*b+z3(i)*c
         a16(i)=x0(i)*a+y0(i)*b+z0(i)*c
         a17(i)=x1(i)*a+y1(i)*b+z1(i)*c
         a18(i)=x2(i)*a+y2(i)*b+z2(i)*c
         a19(i)=x3(i)*a+y3(i)*b+z3(i)*c
         a20(i)=x4(i)*a+y4(i)*b+z4(i)*c
         a21(i)=x5(i)*a+y5(i)*b+z5(i)*c
         a22(i)=x0(i)*a+y0(i)*b+z0(i)*c
         a23(i)=x1(i)*a+y1(i)*b+z1(i)*c
         a24(i)=x2(i)*a+y2(i)*b+z2(i)*c
         a25(i)=x3(i)*a+y3(i)*b+z3(i)*c
         a26(i)=x0(i)*a+y0(i)*b+z0(i)*c
         a27(i)=x1(i)*a+y1(i)*b+z1(i)*c
         a28(i)=x2(i)*a+y2(i)*b+z2(i)*c
         a29(i)=x3(i)*a+y3(i)*b+z3(i)*c
         a30(i)=x4(i)*a+y4(i)*b+z4(i)*c
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

      if (abs(res-result)>0.00001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
 20   continue
      end
