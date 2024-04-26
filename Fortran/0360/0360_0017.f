      real   r4a(20)
      real*8 r8a(20)
      complex*8 c8a(20)
      complex*16 c16a(20)
      do i=1,20
         r4a(i) = i
         r8a(i) = i
         c8a(i) = cmplx(i,i+10)
         c16a(i) = cmplx(i,i+10)
      enddo

      call simple_test(c8a,c16a,19)
      call array_test(c8a,c16a,19)
      call simple_test_conv(c8a,c16a,19)
      call array_test_conv(c8a,c16a,19)
      call simple_test(c8a,c16a,20)
      call array_test(c8a,c16a,20)
      call simple_test_conv(c8a,c16a,20)
      call array_test_conv(c8a,c16a,20)
      end

      subroutine simple_test(c8a,c16a,n)
      real r4a(20),r4x
      real*8 r8a(20),r8x
      complex*8 c8a(20),c8x
      complex*16 c16a(20),c16x
      c8x=0
      do i=1,19
         c8x = c8a(i)
      enddo
      write(6,*) c8x
      c8x=0
      do i=1,n
         c8x = c8a(i)
      enddo
      write(6,*) c8x

      c16x=0
      do i=1,19
         c16x = c16a(i)
      enddo
      write(6,*) c16x
      c16x=0
      do i=1,n
         c16x = c16a(i)
      enddo
      write(6,*) c16x
      end

      subroutine array_test(c8a,c16a,n)
      real r4a(20),r4x(2)/2*0/
      real*8 r8a(20),r8x(2)/2*0/
      complex*8 c8a(20),c8x(2)/2*0/
      complex*16 c16a(20),c16x(2)/2*0/

      do i=1,19
         c8x(1) = c8a(i)
      enddo
      write(6,*) c8x(1)
      do i=1,n
         c8x(2) = c8a(i)
      enddo
      write(6,*) c8x(2)

      do i=1,19
         c16x(1) = c16a(i)
      enddo
      write(6,*) c16x(1)
      do i=1,n
         c16x(2) = c16a(i)
      enddo
      write(6,*) c16x(2)
      end


      subroutine simple_test_conv(c8a,c16a,n)
      real r4a(20),r4x
      real*8 r8a(20),r8x
      complex*8 c8a(20),c8x
      complex*16 c16a(20),c16x
      c8x=0
      do i=1,19
         c8x = c16a(i)
      enddo
      write(6,*) c8x
      c8x=0
      do i=1,n
         c8x = c16a(i)
      enddo
      write(6,*) c8x

      c16x=0
      do i=1,19
         c16x = c8a(i)
      enddo
      write(6,*) c16x
      c16x=0
      do i=1,n
         c16x = c8a(i)
      enddo
      write(6,*) c16x
      end

      subroutine array_test_conv(c8a,c16a,n)
      real r4a(20),r4x(2)/2*0/
      real*8 r8a(20),r8x(2)/2*0/
      complex*8 c8a(20),c8x(2)/2*0/
      complex*16 c16a(20),c16x(2)/2*0/

      do i=1,19
         c8x(1) = c16a(i)
      enddo
      write(6,*) c8x(1)
      do i=1,n
         c8x(2) = c16a(i)
      enddo
      write(6,*) c8x(2)

      do i=1,19
         c16x(1) = c8a(i)
      enddo
      write(6,*) c16x(1)
      do i=1,n
         c16x(2) = c8a(i)
      enddo
      write(6,*) c16x(2)
      end
