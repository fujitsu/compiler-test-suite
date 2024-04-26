      program main
      real*4  x0(10,10),x1(10,10),x2(10,10),
     &        x3(10,10),x4(10,10),x5(10,10),
     &        x6(10,10),x7(10,10),x8(10,10),
     &        x9(10,10),x10(10,10),x11(10,10),
     &        y0(10,10),y1(10,10),y2(10,10),
     &        y3(10,10),y4(10,10),y5(10,10),
     &        y6(10,10),y7(10,10),y8(10,10),
     &        y9(10,10),y10(10,10),y11(10,10),
     &        z0(10,10),z1(10,10),z2(10,10),
     &        z3(10,10),z4(10,10),z5(10,10),
     &        z6(10,10),z7(10,10),z8(10,10),
     &        z9(10,10),z10(10,10),z11(10,10)
      real*4  res,result
      data    result/18100.0000/


      do j=1,10
       do i=1,10
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
         x6(i,j)=6
         y6(i,j)=6
         z6(i,j)=6
         x7(i,j)=7
         y7(i,j)=7
         z7(i,j)=7
         x8(i,j)=8
         y8(i,j)=8
         z8(i,j)=8
         x9(i,j)=9
         y9(i,j)=9
         z9(i,j)=9
         x10(i,j)=10
         y10(i,j)=10
         z10(i,j)=10
         x11(i,j)=11
         y11(i,j)=11
         z11(i,j)=11
       enddo
      enddo
      do j=1,10
       do i=1,10
         x0(i,j)=x1(i,j)*(x2(i,j)+x3(i,j)+x4(i,j)+x5(i,j))
     &        +x6(i,j)*(x7(i,j)+x8(i,j)+x9(i,j)+x10(i,j))
     &        +x11(i,j)*(x1(i,j)+y1(i,j)+z1(i,j))
         y0(i,j)=y1(i,j)*(y2(i,j)-y3(i,j)-y4(i,j)-y5(i,j))
     &        +y6(i,j)*(y7(i,j)-y8(i,j)-y9(i,j)-y10(i,j))
     &        +y11(i,j)*(x1(i,j)+y1(i,j)+z1(i,j))
         z0(i,j)=z1(i,j)*(z2(i,j)+z3(i,j)-z4(i,j)+z5(i,j))
     &        +z6(i,j)*(z7(i,j)-z8(i,j)+z9(i,j)-z10(i,j))
     &        +z11(i,j)*(x1(i,j)+y1(i,j)+z1(i,j))
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
 20   continue
      end
