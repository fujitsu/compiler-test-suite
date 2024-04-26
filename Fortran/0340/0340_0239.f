      program main
      integer*4  x0(10),x1(10),x2(10),x3(10),x4(10),
     &        y0(10),y1(10),y2(10),y3(10),y4(10),
     &        z0(10),z1(10),z2(10),z3(10),z4(10)
      integer*4  res,result
      data    result/900/


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
      enddo
      do i=1,10
         x0(i)=x1(i)*y1(i)+x2(i)*y2(i)
     &        +x3(i)*y3(i)+x4(i)*y4(i)
         y0(i)=y1(i)*z1(i)+y2(i)*z2(i)
     &        +y3(i)*z3(i)+y4(i)*z4(i)
         z0(i)=z1(i)*x1(i)+z2(i)*x2(i)
     &        +z3(i)*x3(i)+z4(i)*x4(i)
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
