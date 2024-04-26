      program main
      real*4  x0(10,10),x1(10,10),x2(10,10),
     &        y0(10,10),y1(10,10),y2(10,10),
     &        z0(10,10),z1(10,10),z2(10,10)
      real*4  res,result
      data    result/1500.0000/


      do j=1,10
       do i=1,10
         x1(i,j)=1
         y1(i,j)=1
         z1(i,j)=1
         x2(i,j)=2
         y2(i,j)=2
         z2(i,j)=2
       enddo
      enddo
      do j=1,10
       do i=1,10
         x0(i,j)=x1(i,j)*y1(i,j)+x2(i,j)*y2(i,j)
         y0(i,j)=y1(i,j)*z1(i,j)+y2(i,j)*z2(i,j)
         z0(i,j)=z1(i,j)*x1(i,j)+z2(i,j)*x2(i,j)
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
 20   continue
      end
