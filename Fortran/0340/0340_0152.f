      program main
      complex*8  x0(10),x1(10),x2(10),x3(10),x4(10),x5(10),
     &        y0(10),y1(10),y2(10),y3(10),y4(10),y5(10),
     &        z0(10),z1(10),z2(10),z3(10),z4(10),z5(10)
      complex*8  a00(10),a01(10),a02(10),a03(10),a04(10),
     &        a05(10),a06(10),a07(10),a08(10),a09(10),
     &        a10(10),a11(10),a12(10),a13(10),a14(10),
     &        a15(10)
      complex*8  a,b,c,res,result
      data    result/(10620.0000,16500.0000)/


      do i=1,10
         x0(i)=(0.0,-1.0)
         y0(i)=(0.0,-1.0)
         z0(i)=(0.0,-1.0)
         x1(i)=(1.0,0.0)
         y1(i)=(1.0,0.0)
         z1(i)=(1.0,0.0)
         x2(i)=(2.0,1.0)
         y2(i)=(2.0,1.0)
         z2(i)=(2.0,1.0)
         x3(i)=(3.0,2.0)
         y3(i)=(3.0,2.0)
         z3(i)=(3.0,2.0)
         x4(i)=(4.0,3.0)
         y4(i)=(4.0,3.0)
         z4(i)=(4.0,3.0)
         x5(i)=(5.0,4.0)
         y5(i)=(5.0,4.0)
         z5(i)=(5.0,4.0)
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
      enddo
      res=0

      do i=1,10
         res=res+a00(i)+a01(i)+a02(i)+a03(i)+a04(i)+
     &           a05(i)+a06(i)+a07(i)+a08(i)+a09(i)+
     &           a10(i)+a11(i)+a12(i)+a13(i)+a14(i)+a15(i)
      enddo

      if (abs(res-result)>0.00001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
 20   continue
      end
