      program main
      integer*4  x0(10),x1(10),x2(10),x3(10),x4(10),
     &        x5(10),x6(10),x7(10),x8(10),x9(10),
     &        x10(10),x11(10),
     &        y0(10),y1(10),y2(10),y3(10),y4(10),
     &        y5(10),y6(10),y7(10),y8(10),y9(10),
     &        y10(10),y11(10),
     &        z0(10),z1(10),z2(10),z3(10),z4(10),
     &        z5(10),z6(10),z7(10),z8(10),z9(10),
     &        z10(10),z11(10)
      integer*4  res,result
      data    result/1810/


      do i=1,10
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
         x6(i)=6
         y6(i)=6
         z6(i)=6
         x7(i)=7
         y7(i)=7
         z7(i)=7
         x8(i)=8
         y8(i)=8
         z8(i)=8
         x9(i)=9
         y9(i)=9
         z9(i)=9
         x10(i)=10
         y10(i)=10
         z10(i)=10
         x11(i)=11
         y11(i)=11
         z11(i)=11
      enddo
      do i=1,10
         x0(i)=x1(i)*(x2(i)+x3(i)+x4(i)+x5(i))
     &        +x6(i)*(x7(i)+x8(i)+x9(i)+x10(i))
     &        +x11(i)*(x1(i)+y1(i)+z1(i))
         y0(i)=y1(i)*(y2(i)-y3(i)-y4(i)-y5(i))
     &        +y6(i)*(y7(i)-y8(i)-y9(i)-y10(i))
     &        +y11(i)*(x1(i)+y1(i)+z1(i))
         z0(i)=z1(i)*(z2(i)+z3(i)-z4(i)+z5(i))
     &        +z6(i)*(z7(i)-z8(i)+z9(i)-z10(i))
     &        +z11(i)*(x1(i)+y1(i)+z1(i))
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
 20   continue
      end
