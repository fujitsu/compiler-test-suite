      program main
      real*4  x0(10,10),y0(10,10),z0(10,10)
      real*4  x1(10,10),x2(10,10),x3(10,10),
     &        x4(10,10),x5(10,10),x6(10,10),
     &        x10(10,10),x11(10,10),x12(10,10),
     &        x13(10,10),x14(10,10)
      real*4  a,b,c
      real*4  res,result
      data    result/265350.000/


      do j=1,10
       do i=1,10
         x0(i,j)=0
         x1(i,j)=1
         x2(i,j)=2
         x3(i,j)=3
         x4(i,j)=4
         x5(i,j)=5
         x6(i,j)=6
         x10(i,j)=10
         x11(i,j)=11
         x12(i,j)=12
         x13(i,j)=13
         x14(i,j)=14
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
