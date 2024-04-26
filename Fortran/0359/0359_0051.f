      call c8
      call c16
      end

      subroutine c8
      complex*8 a2(10),c(10),a8(10),d(10),y

      j =1
      do i=1,10
         d(i) = cmplx(j+20,j+21)
         c(i) = cmplx(j,j+1)
         y = cmplx(i,j)
         j=j+2
      enddo

      do i = 1 , 10
         a2(i) =  5+ c(i) + 30+d(i) 
         a8(i) =  5+ c(i) 
      enddo
      print *,a2
      print *,a8

      do i = 1 , 10
         a2(i) = c(i) - 20.0
         a8(i) = c(i) - 20.0 -  y
      enddo
      print *,a2
      print *,a8

      end

      subroutine c16
      complex*16 a2(10),c(10),a8(10),d(10),y

      j =1
      do i=1,10
         d(i) = dcmplx(j+20,j+21)
         c(i) = dcmplx(j,j+1)
         y = dcmplx(i,j)
         j=j+2
      enddo

      do i = 1 , 10
         a2(i) =  5+ c(i) + 30+d(i) 
         a8(i) =  5+ c(i) 
      enddo
      print *,a2
      print *,a8

      do i = 1 , 10
         a2(i) = c(i) - 20.0
         a8(i) = c(i) - 20.0 -  y
      enddo
      print *,a2
      print *,a8
      end
