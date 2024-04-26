      program main
      complex*8  x0(10),x1(10),x2(10),x3(10),x4(10),
     1        y0(10),y1(10),y2(10),y3(10),y4(10),
     1        z0(10),z1(10),z2(10),z3(10),z4(10)
      complex*8  res,result
      data    result/(300.000000,-300.000000)/


      do i=1,10
         x1(i)=(1.0,-1.0)
         y1(i)=(1.0,-1.0)
         z1(i)=(1.0,-1.0)
         x2(i)=(2.0,-2.0)
         y2(i)=(2.0,-2.0)
         z2(i)=(2.0,-2.0)
         x3(i)=(3.0,-3.0)
         y3(i)=(3.0,-3.0)
         z3(i)=(3.0,-3.0)
         x4(i)=(4.0,-4.0)
         y4(i)=(4.0,-4.0)
         z4(i)=(4.0,-4.0)
      enddo
      do i=1,10
         x0(i)=x1(i)+x2(i)+x3(i)+x4(i)
         y0(i)=y1(i)+y2(i)+y3(i)+y4(i)
         z0(i)=z1(i)+z2(i)+z3(i)+z4(i)
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
