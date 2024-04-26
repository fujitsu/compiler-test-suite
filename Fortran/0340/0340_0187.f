      program main
      complex*8  x0(10,10),y0(10,10),z0(10,10)
      complex*8  x10(10,10),x11(10,10),x12(10,10),
     &        x13(10,10),x14(10,10)
      complex*8  a,res,result
      data    result/(172125.000,15375.0000)/


      do j=1,10
       do i=1,10
         x0(i,j)=(0.0,1.0)+cmplx(j,i)
         x10(i,j)=(10.0,-2.0)+cmplx(j,i)
         x11(i,j)=(11.0,-3.0)+cmplx(j,i)
         x12(i,j)=(12.0,-4.0)+cmplx(j,i)
         x13(i,j)=(13.0,-5.0)+cmplx(j,i)
         x14(i,j)=(14.0,-6.0)+cmplx(j,i)
       enddo
      enddo
      do j=1,10
       do i=1,10
         a = i+j
         x0(i,j) = x10(i,j)*a+x11(i,j)+x12(i,j)+x13(i,j)*x14(i,j)
         y0(i,j) = x10(i,j)*a+x11(i,j)+x12(i,j)+x13(i,j)*x14(i,j)
         z0(i,j) = x10(i,j)*a+x11(i,j)+x12(i,j)+x13(i,j)*x14(i,j)
       enddo
      enddo
      res=0

      do j=1,10
       do i=1,10
        res=res+x0(i,j)+y0(i,j)+z0(i,j)
       enddo
      enddo
      if (abs(res-result)>0.0001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
      write(6,*) x0
 20   continue
      end
