      program main
      real*4  x0(10,10),x1(10,10),x2(10,10),
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
     &        a15(10,10)
      real*4  xx,res,result
      data    result/-28800.0000/


      do j=1,10
       do i=1,10
         x0(i,j)=-1
         y0(i,j)=-1
         z0(i,j)=-1
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
         xx=y0(i,j)+z0(i,j)
         a00(i,j)=x0(i,j)*y0(i,j)+z0(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a01(i,j)=x1(i,j)*y1(i,j)+z1(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a02(i,j)=x2(i,j)*y2(i,j)+z2(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a03(i,j)=x3(i,j)*y3(i,j)+z3(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a04(i,j)=x4(i,j)*y4(i,j)+z4(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a05(i,j)=x5(i,j)*y5(i,j)+z5(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a06(i,j)=x0(i,j)*y0(i,j)+z0(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a07(i,j)=x1(i,j)*y1(i,j)+z1(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a08(i,j)=x2(i,j)*y2(i,j)+z2(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a09(i,j)=x3(i,j)*y3(i,j)+z3(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a10(i,j)=x4(i,j)*y4(i,j)+z4(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a11(i,j)=x5(i,j)*y5(i,j)+z5(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a12(i,j)=x0(i,j)*y0(i,j)+z0(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a13(i,j)=x1(i,j)*y1(i,j)+z1(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a14(i,j)=x2(i,j)*y2(i,j)+z2(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
         a15(i,j)=x3(i,j)*y3(i,j)+z3(i,j)+xx*
     &      (x0(i,j)+x1(i,j)+x2(i,j)
     &       +x3(i,j)+x4(i,j)+x5(i,j))
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
     &          +a15(i,j)
       enddo
      enddo

      if (abs(res-result)>0.00001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
 20   continue
      end
