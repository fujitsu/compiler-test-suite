      call c8
      call c16
      end

      subroutine c8
      complex*8 b(10),c(10), a1(10),a2(10),x
      j = 1
      do i=1,10
         b(i) = cmplx(j,j+1)
         c(i) = cmplx(j+20,j+21)
         x = cmplx(i,i+1)
         j = j + 2
      enddo

      do i = 1 , 10
         a1(i) = b(i) +1.0 +x +c(i)
         a2(i) = b(i) + 1.0 
      enddo
      print *,a1
      print *,a2
      end

      subroutine c16
      complex*16 b(10),c(10), a1(10),a2(10),x
      j = 1
      do i=1,10
         b(i) = cmplx(j,j+1)
         c(i) = cmplx(j+20,j+21)
         x = cmplx(i,i+1)
         j = j + 2
      enddo

      do i = 1 , 10
         a1(i) = b(i) +1.0 +x +c(i)
         a2(i) = b(i) + 1.0 
      enddo
      print *,a1
      print *,a2
      end
