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
          a(i) = 0
          b(i) = cmplx(real(i),real(i+10))
          c(i) = i
          d(i) = i+1
          e(i) = i+2
          f(i) = -i
       enddo

        do i=1,10
          a(i)=(c(i)-d(i))-b(i)+e(i)*f(i)
        enddo
        write(6,*) a

       do i=1,10
         a(i)=b(i)+c(i)+d(i)+e(i)
       enddo
       write(6,*) a

       do i=1,10
         a(i)=b(i)+d(i)*e(i)*c(i)/f(i)
       enddo
       write(6,*) a

       do i=1,10
         a(i)=e(i)*c(i)*(d(i)*4)
       enddo
       write(6,*) a

       do i=1,10
         a(i)=b(i)+cmplx(c(i),d(i))
       enddo
       write(6,*) a

       do i=1,10
         a(i)=3+c(i)
       enddo
       write(6,*) a
       end

      subroutine c16
       complex*16 a(10)
       complex*16 b(10)
       real*8 c(10)
       real*8 d(10)
       real*8 e(10)
       real*8 f(10)

       do i=1,10
          a(i) = 0
          b(i) = dcmplx(real(i),real(i+10))
          c(i) = i
          d(i) = i+1
          e(i) = i+2
          f(i) = -i
       enddo

        do i=1,10
          a(i)=(c(i)-d(i))-b(i)+e(i)*f(i)
        enddo
        write(6,*) a

       do i=1,10
         a(i)=b(i)+c(i)+d(i)+e(i)
       enddo
       write(6,*) a

       do i=1,10
         a(i)=b(i)+d(i)*e(i)*c(i)/f(i)
       enddo
       write(6,*) a

       do i=1,10
         a(i)=e(i)*c(i)*(d(i)*4)
       enddo
       write(6,*) a

       do i=1,10
         a(i)=b(i)+dcmplx(c(i),d(i))
       enddo
       write(6,*) a

       do i=1,10
         a(i)=3+c(i)
       enddo
       write(6,*) a
       end

