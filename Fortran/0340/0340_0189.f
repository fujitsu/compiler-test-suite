      program main
      complex*8  x0(10,10),y0(10,10),z0(10,10)
      complex*8  x1(10,10),x2(10,10),x3(10,10),
     &        x4(10,10),x5(10,10),x6(10,10),
     &        x10(10,10),x11(10,10),x12(10,10),
     &        x13(10,10),x14(10,10)
      complex*8  a,b,c
      complex*8  res,result
      data    result/(752025.000,905625.000)/


      do j=1,10
       do i=1,10
         x0(i,j)=(0.0,0.0)+cmplx(j,i)
         x1(i,j)=(1.0,-1.0)+cmplx(j,i)
         x2(i,j)=(2.0,-2.0)+cmplx(j,i)
         x3(i,j)=(3.0,-3.0)+cmplx(j,i)
         x4(i,j)=(4.0,-4.0)+cmplx(j,i)
         x5(i,j)=(5.0,-5.0)+cmplx(j,i)
         x6(i,j)=(6.0,-6.0)+cmplx(j,i)
         x10(i,j)=(10.0,1.0)+cmplx(j,i)
         x11(i,j)=(11.0,2.0)+cmplx(j,i)
         x12(i,j)=(12.0,3.0)+cmplx(j,i)
         x13(i,j)=(13.0,4.0)+cmplx(j,i)
         x14(i,j)=(14.0,5.0)+cmplx(j,i)
       enddo
      enddo
      do j=1,10
       do i=1,10
         a = x1(i,j)*i + x2(i,j)
         b = x3(i,j)*i + x4(i,j)
         c = x5(i,j)*i + x6(i,j)
         x0(i,j) = x10(i,j)*a+x11(i,j)*b+x12(i,j)*c+x13(i,j)*x14(i,j)
         y0(i,j) = x10(i,j)*a+x11(i,j)*b+x12(i,j)*c+x13(i,j)*x14(i,j)
         z0(i,j) = x10(i,j)*a+x11(i,j)*b+x12(i,j)*c+x13(i,j)*x14(i,j)
       enddo
      enddo
      res=0

      do j=1,10
       do i=1,10
        res=res+x0(i,j)+y0(i,j)+z0(i,j)
       enddo
      enddo
      if (abs(res-result)>0.00001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
      write(6,*) x0
 20   continue
      end
