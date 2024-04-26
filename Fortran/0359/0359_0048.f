      call c8
      call c16
      end

      subroutine c8
      complex*8 c(10), a1(10),a2(10),  y,x,d(10)
      j=1
      do i=1,10
         c(i) = cmplx(j,j+1)
         y = cmplx(i-2,i+4)
         j=j+2
      enddo

      do 10 i = 1 , 10
         a1(i) = 5+ c(i) 
         a2(i) = 5+ c(i) +y
 10   continue
      print *,a1
      print *,a2
      end

      subroutine c16
      complex*16 c(10), a1(10),a2(10),  y,x,d(10)
      j=1
      do i=1,10
         c(i) = cmplx(j,j+1)
         y = cmplx(i-2,i+4)
         j=j+2
      enddo

      do 10 i = 1 , 10
         a1(i) = 5+ c(i) 
         a2(i) = 5+ c(i) +y
 10   continue
      print *,a1
      print *,a2
      end
