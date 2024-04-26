      call sub1
      call sub2
      call sub3
      call sub4
      end

      subroutine sub1
      complex*8 c(10),d(10),e(10)
      do i=1,10
         c(i) = cmplx(i,i*2)
         d(i) = cmplx(i+10,-i)
      enddo
      write(6,*) 

      do i=1,10
        e(i) =cmplx(real(c(i)), imag(d(i)))
      enddo
      write(6,*) e
      end

      subroutine sub2
      complex*8 c(10),d(10),e(10)


      do i=1,10
         c(i) = cmplx(i,i*2)
         d(i) = cmplx(i+10,-i)
      enddo
      write(6,*) 

      do i=1,10
        e(i) =cmplx(imag(c(i)), imag(d(i))) 
      enddo
      write(6,*) e
      end

      subroutine sub3
      complex*8 c(10),d(10),e(10)


      do i=1,10
         c(i) = cmplx(i,i*2)
         d(i) = cmplx(i+10,-i)
      enddo
      write(6,*) 

      do i=1,10
        e(i) =cmplx(real(c(i)), real(d(i))) 
      enddo
      write(6,*) e
      end

      subroutine sub4
      complex*8 c(10),d(10),e(10)
      do i=1,10
         c(i) = cmplx(i,i*2)
         d(i) = cmplx(i+10,-i)
      enddo
      write(6,*) 

      do i=1,10
        e(i) =cmplx(imag(c(i)), real(d(i)))
      enddo
      write(6,*) e
      end

