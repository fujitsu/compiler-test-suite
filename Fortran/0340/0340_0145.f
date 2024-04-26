      program main
      complex*8  x0(10),x1(10),x2(10),
     1        y0(10),y1(10),y2(10),
     1        z0(10),z1(10),z2(10)
      complex*8  res,result
      data    result/(170.000000,0.0)/


      do i=1,10
         x1(i)=(1.0,-1.0)
         y1(i)=(1.0,0.0)
         z1(i)=(1.0,1.0)
         x2(i)=(2.0,-1.0)
         y2(i)=(2.0,0.0)
         z2(i)=(2.0,1.0)
      enddo
      do i=1,10
         x0(i)=x1(i)*y1(i)+x2(i)*y2(i)
         y0(i)=y1(i)*z1(i)+y2(i)*z2(i)
         z0(i)=z1(i)*x1(i)+z2(i)*x2(i)
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
