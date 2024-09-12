      program main
      real a(10,10),b(10,10)
      real x,y

      x=0
      y=500
      do i=1,10
         do j=1,10
            a(i,j)=x
            x=x+1
         enddo
      enddo
      do j=1,10
         do i=1,10
            b(j,i)=y
            y=y+1
         enddo
      enddo

      print *,i,j
      print *,a
      print *,b
      end
