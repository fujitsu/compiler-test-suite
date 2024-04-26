      program main
      integer*4  x0(10,10),x1(10,10),x2(10,10),
     &        x3(10,10),x4(10,10),x5(10,10),
     &        y0(10,10),y1(10,10),y2(10,10),
     &        y3(10,10),y4(10,10),y5(10,10),
     &        z0(10,10),z1(10,10),z2(10,10),
     &        z3(10,10),z4(10,10),z5(10,10)
      integer*4  a00(10,10),a01(10,10),a02(10,10),
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
      integer*4  a,b,c,res,result
      data    result/281400/


      do j=1,10
       do i=1,10
         x0(i,j)=0
         y0(i,j)=0
         z0(i,j)=0
         x1(i,j)=1
         y1(i,j)=1
         z1(i,j)=1
         x2(i,j)=2
         y2(i,j)=2
         z2(i,j)=2
         x3(i,j)=3
         y3(i,j)=3
         z3(i,j)=3
         x4(i,j)=4
         y4(i,j)=4
         z4(i,j)=4
         x5(i,j)=5
         y5(i,j)=5
         z5(i,j)=5
       enddo
      enddo
      do j=1,10
       do i=1,10
         a = x0(i,j)*i + x1(i,j)
         b = x2(i,j)*i + x3(i,j)
         c = x4(i,j)*i + x5(i,j)
         a00(i,j)=x0(i,j)*a+y0(i,j)*b+z0(i,j)*c
         a01(i,j)=x1(i,j)*a+y1(i,j)*b+z1(i,j)*c
         a02(i,j)=x2(i,j)*a+y2(i,j)*b+z2(i,j)*c
         a03(i,j)=x3(i,j)*a+y3(i,j)*b+z3(i,j)*c
         a04(i,j)=x4(i,j)*a+y4(i,j)*b+z4(i,j)*c
         a05(i,j)=x5(i,j)*a+y5(i,j)*b+z5(i,j)*c
         a06(i,j)=x0(i,j)*a+y0(i,j)*b+z0(i,j)*c
         a07(i,j)=x1(i,j)*a+y1(i,j)*b+z1(i,j)*c
         a08(i,j)=x2(i,j)*a+y2(i,j)*b+z2(i,j)*c
         a09(i,j)=x3(i,j)*a+y3(i,j)*b+z3(i,j)*c
         a10(i,j)=x4(i,j)*a+y4(i,j)*b+z4(i,j)*c
         a11(i,j)=x5(i,j)*a+y5(i,j)*b+z5(i,j)*c
         a12(i,j)=x0(i,j)*a+y0(i,j)*b+z0(i,j)*c
         a13(i,j)=x1(i,j)*a+y1(i,j)*b+z1(i,j)*c
         a14(i,j)=x2(i,j)*a+y2(i,j)*b+z2(i,j)*c
         a15(i,j)=x3(i,j)*a+y3(i,j)*b+z3(i,j)*c
         a16(i,j)=x0(i,j)*a+y0(i,j)*b+z0(i,j)*c
         a17(i,j)=x1(i,j)*a+y1(i,j)*b+z1(i,j)*c
         a18(i,j)=x2(i,j)*a+y2(i,j)*b+z2(i,j)*c
         a19(i,j)=x3(i,j)*a+y3(i,j)*b+z3(i,j)*c
         a20(i,j)=x4(i,j)*a+y4(i,j)*b+z4(i,j)*c
         a21(i,j)=x5(i,j)*a+y5(i,j)*b+z5(i,j)*c
         a22(i,j)=x0(i,j)*a+y0(i,j)*b+z0(i,j)*c
         a23(i,j)=x1(i,j)*a+y1(i,j)*b+z1(i,j)*c
         a24(i,j)=x2(i,j)*a+y2(i,j)*b+z2(i,j)*c
         a25(i,j)=x3(i,j)*a+y3(i,j)*b+z3(i,j)*c
         a26(i,j)=x0(i,j)*a+y0(i,j)*b+z0(i,j)*c
         a27(i,j)=x1(i,j)*a+y1(i,j)*b+z1(i,j)*c
         a28(i,j)=x2(i,j)*a+y2(i,j)*b+z2(i,j)*c
         a29(i,j)=x3(i,j)*a+y3(i,j)*b+z3(i,j)*c
         a30(i,j)=x4(i,j)*a+y4(i,j)*b+z4(i,j)*c
       enddo
      enddo
      res=0

      do j=1,10
       do i=1,10
         res=res+a00(i,j)+a01(i,j)+a02(i,j)+a03(i,j)+a04(i,j)+
     &           a05(i,j)+a06(i,j)+a07(i,j)+a08(i,j)+a09(i,j)+
     &           a10(i,j)+a11(i,j)+a12(i,j)+a13(i,j)+a14(i,j)+
     &           a15(i,j)+a16(i,j)+a17(i,j)+a18(i,j)+a19(i,j)+
     &           a20(i,j)+a21(i,j)+a22(i,j)+a23(i,j)+a24(i,j)+
     &           a25(i,j)+a26(i,j)+a27(i,j)+a28(i,j)+a29(i,j)+
     &           a30(i,j)
       enddo
      enddo

      if (abs(res-result)>0.0001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
 20   continue
      end
