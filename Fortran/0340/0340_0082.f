      program main
      real*4  x0(10),x1(10),x2(10),x3(10),x4(10),x5(10),
     &        y0(10),y1(10),y2(10),y3(10),y4(10),y5(10),
     &        z0(10),z1(10),z2(10),z3(10),z4(10),z5(10)
      real*4  a00(10),a01(10),a02(10),a03(10),a04(10),
     &        a05(10),a06(10),a07(10),a08(10),a09(10),
     &        a10(10),a11(10),a12(10),a13(10),a14(10),
     &        a15(10)
      real*4  res,result
      data    result/1600.00000/

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
         a00(i)=x0(i)*y0(i)+z0(i)
         a01(i)=x1(i)*y1(i)+z1(i)
         a02(i)=x2(i)*y2(i)+z2(i)
         a03(i)=x3(i)*y3(i)+z3(i)
         a04(i)=x4(i)*y4(i)+z4(i)
         a05(i)=x5(i)*y5(i)+z5(i)
         a06(i)=x0(i)*y0(i)+z0(i)
         a07(i)=x1(i)*y1(i)+z1(i)
         a08(i)=x2(i)*y2(i)+z2(i)
         a09(i)=x3(i)*y3(i)+z3(i)
         a10(i)=x4(i)*y4(i)+z4(i)
         a11(i)=x5(i)*y5(i)+z5(i)
         a12(i)=x0(i)*y0(i)+z0(i)
         a13(i)=x1(i)*y1(i)+z1(i)
         a14(i)=x2(i)*y2(i)+z2(i)
         a15(i)=x3(i)*y3(i)+z3(i)
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
