      program main
      complex*8  y0(10),z0(10)
      complex*8  x0(10),x1(10),x2(10),
     &        x3(10),x4(10),x5(10),
     &        x6(10),x10(10),x11(10),
     &        x12(10),x13(10),x14(10)
      complex*8  a,b,c
      complex*8  res,result
      data    result/(30405.0000,-12975.0000)/


      do i=1,10
         x0(i)=(0.0,0.0)
         x1(i)=(1.0,-1.0)
         x2(i)=(2.0,-2.0)
         x3(i)=(3.0,-3.0)
         x4(i)=(4.0,-4.0)
         x5(i)=(5.0,-5.0)
         x6(i)=(6.0,-6.0)
         x10(i)=(10.0,1.0)
         x11(i)=(11.0,2.0)
         x12(i)=(12.0,3.0)
         x13(i)=(13.0,4.0)
         x14(i)=(14.0,5.0)
      enddo
      do i=1,10
         a = x1(i)*i + x2(i)
         b = x3(i)*i + x4(i)
         c = x5(i)*i + x6(i)
         x0(i) = x10(i)*a + x11(i)*b + x12(i)*c + x13(i)*x14(i)
         y0(i) = x10(i)*a + x11(i)*b + x12(i)*c + x13(i)*x14(i)
         z0(i) = x10(i)*a + x11(i)*b + x12(i)*c + x13(i)*x14(i)
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
      write(6,*) x0,y0,z0
 20   continue
      end
