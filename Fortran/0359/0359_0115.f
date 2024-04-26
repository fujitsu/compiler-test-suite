      call subc8
      call subc16
      end

      subroutine subc8()
      complex*8 c(10),d(10)
      real*4 a(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      integer*4 i
      real*4 dx,dy


      do i=1,10
         c(i) = cmplx(i+10,i+11)
      enddo

      do i=1,10
        dy = imag(c(i))
        d(i) = cmplx(2.0, dy)
      enddo
      write(6,*) d
      do i=1,10
        dy = imag(c(i))
        d(i) = cmplx(dy, 2.0)
      enddo
      write(6,*) d
      do i=1,10
        dy = real(c(i))
        d(i) = cmplx(2.0, dy)
      enddo
      write(6,*) d
      do i=1,10
        dy = real(c(i))
        d(i) = cmplx(dy, 2.0)
      enddo
      write(6,*) d
      return
      end

      subroutine subc16
      complex*16 c(10),d(10)
      real*8 a(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      real*8 dx,dy


      do i=1,10
         c(i) = dcmplx(i+10,i+11)
      enddo

      do i=1,10
        dy = dimag(c(i))
        d(i) = dcmplx(2.0, dy)
      enddo
      write(6,*) d
      do i=1,10
        dy = dimag(c(i))
        d(i) = dcmplx(dy, 2.0)
      enddo
      write(6,*) d
      do i=1,10
        dy = dreal(c(i))
        d(i) = dcmplx(2.0, dy)
      enddo
      write(6,*) d
      do i=1,10
        dy = dreal(c(i))
        d(i) = dcmplx(dy, 2.0)
      enddo
      write(6,*) d
      return
      end

