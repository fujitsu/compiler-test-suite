      program main
      complex*8  x0(10,10),y0(10,10),z0(10,10),
     &        x1(10,10),x2(10,10),x3(10,10),
     &        x4(10,10),x5(10,10),x6(10,10),
     &        y1(10,10),y2(10,10),y3(10,10),
     &        y4(10,10),y5(10,10),y6(10,10),
     &        z1(10,10),z2(10,10),z3(10,10),
     &        z4(10,10),z5(10,10),z6(10,10)
      complex*8  res,result
      data    result/(3477375.00,3790200.00)/


      do j=1,10
       do i=1,10
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
         x6(i,j)=(6.0,-7.0)+cmplx(j,i)
         y6(i,j)=(6.0,-7.0)+cmplx(j,i)
         z6(i,j)=(6.0,-7.0)+cmplx(j,i)
       enddo
      enddo
      do j=1,10
       do i=1,10
         a = x5(i,j)*i + x6(i,j)
         b = y5(i,j)*i + y6(i,j)
         c = z5(i,j)*i + z6(i,j)
         x0(i,j)=x1(i,j)*y1(i,j)*a+x2(i,j)*y2(i,j)*b
     &        +x3(i,j)*y3(i,j)*c+x4(i,j)*y4(i,j)
         y0(i,j)=y1(i,j)*z1(i,j)*a+y2(i,j)*z2(i,j)*b
     &        +y3(i,j)*z3(i,j)*c+y4(i,j)*z4(i,j)
         z0(i,j)=z1(i,j)*x1(i,j)*a+z2(i,j)*x2(i,j)*b
     &        +z3(i,j)*x3(i,j)*c+z4(i,j)*x4(i,j)
       enddo
      enddo
      res=0

      do j=1,10
       do i=1,10
         res=res+x0(i,j)+y0(i,j)+z0(i,j)
       enddo
      enddo

      if (abs(res-result)>0.01) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
 20   continue
      end
