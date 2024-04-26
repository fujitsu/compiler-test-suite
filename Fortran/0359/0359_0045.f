      call c8
      call c16
      end

      subroutine c8
      complex*8 b(10), a1(10),a2(10),x,y,z

      j = 1
      do i=1,10
         b(i) = cmplx(j,j+1)
         x = cmplx(i,i+1)
         y = cmplx(i-2,i+4)
         z = cmplx(i-8,i+3)
         j = j + 2
      enddo

      do i = 1 , 10
         a1(i) = b(i) - real(y)+2-imag(z)
         a2(i) = b(i) - real(y)  
      enddo
      print *,a1
      print *,a2
c
      do i = 1 , 10
         a1(i) = b(i) - real(y)
         a2(i) = b(i) -real(y) +3 
      enddo
      print *,a1
      print *,a2
      end

      subroutine c16
      complex*16 b(10), a1(10),a2(10),x,y,z

      j = 1
      do i=1,10
         b(i) = cmplx(j,j+1)
         x = cmplx(i,i+1)
         y = cmplx(i-2,i+4)
         z = cmplx(i-8,i+3)
         j = j + 2
      enddo

      do i = 1 , 10
         a1(i) = b(i) - real(y)+2-imag(z)
         a2(i) = b(i) - real(y)  
      enddo
      print *,a1
      print *,a2
c
      do i = 1 , 10
         a1(i) = b(i) - real(y)
         a2(i) = b(i) -real(y) +3 
      enddo
      print *,a1
      print *,a2
      end
