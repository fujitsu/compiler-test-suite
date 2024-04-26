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

      call simple_test(r4a,r8a,19)
      call array_test(r4a,r8a,19)
      call simple_test_conv(r4a,r8a,19)
      call array_test_conv(r4a,r8a,19)
      call simple_test(r4a,r8a,20)
      call array_test(r4a,r8a,20)
      call simple_test_conv(r4a,r8a,20)
      call array_test_conv(r4a,r8a,20)
      end

      subroutine simple_test(r4a,r8a,n)
      real r4a(20),r4x
      real*8 r8a(20),r8x
      complex*8 c8a(20),c8x
      complex*16 c16a(20),c16x
      r4x=0
      do i=1,19
         r4x = r4a(i)
      enddo
      write(6,*) r4x
      r4x=0
      do i=1,n
         r4x = r4a(i)
      enddo
      write(6,*) r4x

      r8x=0
      do i=1,19
         r8x = r8a(i)
      enddo
      write(6,*) r8x
      r8x=0
      do i=1,n
         r8x = r8a(i)
      enddo
      write(6,*) r8x
      end

      subroutine array_test(r4a,r8a,n)
      real r4a(20),r4x(2)/2*0/
      real*8 r8a(20),r8x(2)/2*0/
      complex*8 c8a(20),c8x(2)/2*0/
      complex*16 c16a(20),c16x(2)/2*0/

      do i=1,19
         r4x(1) = r4a(i)
      enddo
      write(6,*) r4x(1)
      do i=1,n
         r4x(2) = r4a(i)
      enddo
      write(6,*) r4x(2)

      do i=1,19
         r8x(1) = r8a(i)
      enddo
      write(6,*) r8x(1)
      do i=1,n
         r8x(2) = r8a(i)
      enddo
      write(6,*) r8x(2)
      end


      subroutine simple_test_conv(r4a,r8a,n)
      real r4a(20),r4x
      real*8 r8a(20),r8x
      complex*8 c8a(20),c8x
      complex*16 c16a(20),c16x
      r4x=0
      do i=1,19
         r4x = r8a(i)
      enddo
      write(6,*) r4x
      r4x=0
      do i=1,n
         r4x = r8a(i)
      enddo
      write(6,*) r4x

      r8x=0
      do i=1,19
         r8x = r4a(i)
      enddo
      write(6,*) r8x
      r8x=0
      do i=1,n
         r8x = r4a(i)
      enddo
      write(6,*) r8x
      end

      subroutine array_test_conv(r4a,r8a,n)
      real r4a(20),r4x(2)/2*0/
      real*8 r8a(20),r8x(2)/2*0/
      complex*8 c8a(20),c8x(2)/2*0/
      complex*16 c16a(20),c16x(2)/2*0/

      do i=1,19
         r4x(1) = r8a(i)
      enddo
      write(6,*) r4x(1)
      do i=1,n
         r4x(2) = r8a(i)
      enddo
      write(6,*) r4x(2)

      do i=1,19
         r8x(1) = r4a(i)
      enddo
      write(6,*) r8x(1)
      do i=1,n
         r8x(2) = r4a(i)
      enddo
      write(6,*) r8x(2)
      end
