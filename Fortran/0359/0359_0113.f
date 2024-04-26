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
         d(i) = cmplx(i+20,i+31)
      enddo

      do i=1,10
        dy = imag(c(i))
        dx = a(i) + 2
        d(i) = cmplx(dx, dy) + d(i)
      enddo
      write(6,*) d
      do i=1,10
        dy = imag(c(i))
        dx = a(i) + 3
        d(i) = cmplx(dy, dx)+ d(i)
      enddo
      write(6,*) d
      do i=1,10
        dy = real(c(i))
        dx = a(i) + 4
        d(i) = cmplx(dx, dy)+ d(i)
      enddo
      write(6,*) d
      do i=1,10
        dy = real(c(i))
        dx = a(i) +5
        d(i) = cmplx(dy, dx)+ d(i)
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
         d(i) = cmplx(i+20,i+31)
         c(i) = dcmplx(i+10,i+11)
      enddo

      do i=1,10
        dy = dimag(c(i))
        dx = a(i) -1
        d(i) = dcmplx(dx, dy) + d(i)
      enddo
      write(6,*) d
      do i=1,10
        dy = dimag(c(i))
        dx = a(i) -2
        d(i) = dcmplx(dy, dx) + d(i)
      enddo
      write(6,*) d
      do i=1,10
        dy = dreal(c(i))
        dx = a(i) -3
        d(i) = dcmplx(dx, dy) + d(i)
      enddo
      write(6,*) d
      do i=1,10
        dy = dreal(c(i))
        dx = a(i) -4
        d(i) = dcmplx(dy, dx) + d(i)
      enddo
      write(6,*) d
      return
      end

