      call c8
      call c16
      end

      subroutine c8
       complex*8 a(10)
       complex*8 b(10)
       real*4 c(10)
       real*4 d(10)
       real*4 e(10)
       real*4 f(10)

       do i=1,10
          a(i) = dcmplx(real(i),real(i+10))
          b(i) = cmplx(real(i),real(i+10))
          c(i) = i
          d(i) = i+1
          e(i) = i+2
          f(i) = -i
       enddo

        do i=1,10
          c(i)=imag(a(i))
        enddo
        write(6,*) c

        do i=1,10
          c(i)=imag(a(i))+2
        enddo
        write(6,*) c

        do i=1,10
          c(i)=imag(a(i))+(2.,3.)
        enddo
        write(6,*) c

        do i=1,10
          c(i)=imag(a(i))+b(i)
        enddo
        write(6,*) c

        do i=1,10
          c(i)=imag(a(i))+d(i)
        enddo
        write(6,*) c

        do i=1,10
          c(i)=imag(a(i))+a(i)
        enddo
        write(6,*) c



       end

      subroutine c16
       complex*16 a(10)
       complex*16 b(10)
       real*8 c(10)
       real*8 d(10)
       real*8 e(10)
       real*8 f(10)

       do i=1,10
          a(i) = dcmplx(real(i),real(i+10))
          b(i) = dcmplx(real(i),real(i+10))
          c(i) = i
          d(i) = i+1
          e(i) = i+2
          f(i) = -i
       enddo

        do i=1,10
          c(i)=dimag(a(i))
        enddo
        write(6,*) c

        do i=1,10
          c(i)=dimag(a(i))+2
        enddo
        write(6,*) c

        do i=1,10
          c(i)=dimag(a(i))+(2.,3.)
        enddo
        write(6,*) c

        do i=1,10
          c(i)=dimag(a(i))+b(i)
        enddo
        write(6,*) c

        do i=1,10
          c(i)=dimag(a(i))+d(i)
        enddo
        write(6,*) c

        do i=1,10
          c(i)=dimag(a(i))+a(i)
        enddo
        write(6,*) c

        end
