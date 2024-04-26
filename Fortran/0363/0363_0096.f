      program main
      complex*16 a(65),b(65),res(65)
      real*8     c(65),x
      call init(a,b,c,res,65)
      do i=1,65
         x = real(b(i))*c(i)
         a(i) = dcmplx(real(b(i))*c(i), imag(a(i)))
      enddo
      do i=1,65
         if(a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write(6,*) a
      write(6,*) res

 20   continue
      end

      subroutine init(a,b,c,res,n1)
      complex*16 a(65),b(65),res(65)
      real*8     c(65)

      do i=1,65
         if (i .gt. n1/2) then
            a(i) = cmplx(2.,i)
            b(i) = cmplx(i,i)
            c(i) = i
         else
            a(i) = cmplx(-2.,i)
            b(i) = cmplx(-i,i)
            c(i) = -i
         endif
         res(i) = cmplx(real(b(i))*c(i), imag(a(i)))
      enddo
      end

