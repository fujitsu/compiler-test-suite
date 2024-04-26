      program main
      complex*8  x0(10),y0(10),z0(10)
      complex*8  x10(10),x11(10),x12(10),x13(10),x14(10)
      complex*8  res,result,a
      data       result/(6900.00000,-4980.00000)/


      do i=1,10
         x0(i)=(0.0,1.0)
         x10(i)=(10.0,-2.0)
         x11(i)=(11.0,-3.0)
         x12(i)=(12.0,-4.0)
         x13(i)=(13.0,-5.0)
         x14(i)=(14.0,-6.0)
      enddo
      do i=1,10
         a = i
         x0(i) = x10(i)*a + x11(i) + x12(i) + x13(i)*x14(i)
         y0(i) = x10(i)*a + x11(i) + x12(i) + x13(i)*x14(i)
         z0(i) = x10(i)*a + x11(i) + x12(i) + x13(i)*x14(i)
      enddo
      res=0

      do i=1,10
        res=res+x0(i)+y0(i)+z0(i)
      enddo

      if (abs(res-result)>0.00001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
      write(6,*) x0
 20   continue
      end
