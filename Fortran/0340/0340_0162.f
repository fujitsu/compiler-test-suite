      program main
      complex*8  x0(10),y0(10),z0(10),
     &        x1(10),x2(10),x3(10),
     &        x4(10),x5(10),x6(10),
     &        y1(10),y2(10),y3(10),
     &        y4(10),y5(10),y6(10),
     &        z1(10),z2(10),z3(10),
     &        z4(10),z5(10),z6(10)
      complex*8  a,b,c,res,result
      data    result/(-7535.00000,-27330.0000)/


      do i=1,10
         x1(i)=(1.0,-1.0)
         y1(i)=(1.0,-2.0)
         z1(i)=(1.0,-3.0)
         x2(i)=(2.0,-1.0)
         y2(i)=(2.0,-2.0)
         z2(i)=(2.0,-3.0)
         x3(i)=(3.0,-1.0)
         y3(i)=(3.0,-2.0)
         z3(i)=(3.0,-3.0)
         x4(i)=(4.0,-1.0)
         y4(i)=(4.0,-2.0)
         z4(i)=(4.0,-3.0)
         x5(i)=(5.0,-1.0)
         y5(i)=(5.0,-2.0)
         z5(i)=(5.0,-3.0)
         x6(i)=(6.0,-1.0)
         y6(i)=(6.0,-2.0)
         z6(i)=(6.0,-3.0)
      enddo
      do i=1,10
         a = x5(i)*i + x6(i)
         b = y5(i)*i + y6(i)
         c = z5(i)*i + z6(i)
         x0(i)=x1(i)*y1(i)*a
     &        +x2(i)*y2(i)*b
     &        +x3(i)*y3(i)*c+x4(i)*y4(i)
         y0(i)=y1(i)*z1(i)*a
     &        +y2(i)*z2(i)*b
     &        +y3(i)*z3(i)*c+y4(i)*z4(i)
         z0(i)=z1(i)*x1(i)*a
     &        +z2(i)*x2(i)*b
     &        +z3(i)*x3(i)*c+z4(i)*x4(i)
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
