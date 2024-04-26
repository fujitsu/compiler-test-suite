      program main
      real x(10,10),y(10,10)
      do concurrent(i=1:10)
         do j=1,10
            x(i,j)=i
         enddo
      enddo
      do concurrent(i=1:10)
         do j=1,10
            y(i,j)=i
         enddo
      enddo
      print *,x(1,1),y(1,1),x(10,10),y(10,10)
      end
