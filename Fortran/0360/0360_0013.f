      real   r4a(20)
      real*8 r8a(20)
      logical mask1(20),mask2(20)
      data mask1/.true.,.true.,.false.,.false.,
     +     .true.,.false.,.false.,.true.,
     +     .true.,.true.,.false.,.false.,
     +     .true.,.false.,.false.,.true.,
     +     .true.,.true.,.false.,.false./
      data mask2/.true.,.true.,.false.,.false.,
     +     .true.,.false.,.false.,.true.,
     +     .true.,.true.,.false.,.false.,
     +     .true.,.false.,.false.,.true.,
     +     .true.,.true.,.true.,.true./
      do i=1,20
         r4a(i) = i
         r8a(i) = i
      enddo

      call simple_test(r4a,r8a,mask1,19)
      call array_test(r4a,r8a,mask1,19)
      call simple_test_conv(r4a,r8a,mask1,19)
      call array_test_conv(r4a,r8a,mask1,19)
      call simple_test(r4a,r8a,mask2,19)
      call array_test(r4a,r8a,mask2,19)
      call simple_test_conv(r4a,r8a,mask2,19)
      call array_test_conv(r4a,r8a,mask2,19)
      call simple_test(r4a,r8a,mask1,20)
      call array_test(r4a,r8a,mask1,20)
      call simple_test_conv(r4a,r8a,mask1,20)
      call array_test_conv(r4a,r8a,mask1,20)
      call simple_test(r4a,r8a,mask2,20)
      call array_test(r4a,r8a,mask2,20)
      call simple_test_conv(r4a,r8a,mask2,20)
      call array_test_conv(r4a,r8a,mask2,20)
      end

      subroutine simple_test(r4a,r8a,mask,n)
      real r4a(20),r4x
      real*8 r8a(20),r8x
      logical mask(20)
      r4x=0
      do i=1,19
         if (mask(i)) r4x = r4x + r4a(i)
      enddo
      write(6,*) r4x
      r4x=0
      do i=1,n
         if (mask(i)) r4x = r4x + r4a(i)
      enddo
      write(6,*) r4x

      r8x=0
      do i=1,19
         if (mask(i)) r8x = r8x + r8a(i)
      enddo
      write(6,*) r8x
      r8x=0
      do i=1,n
         if (mask(i)) r8x = r8x + r8a(i)
      enddo
      write(6,*) r8x
      end

      subroutine array_test(r4a,r8a,mask,n)
      real r4a(20),r4x(2)/2*0/
      real*8 r8a(20),r8x(2)/2*0/
      logical mask(20)

      do i=1,19
         if (mask(i)) r4x(1) = r4x(1) + r4a(i)
      enddo
      write(6,*) r4x(1)
      do i=1,n
         if (mask(i)) r4x(2) = r4x(2) + r4a(i)
      enddo
      write(6,*) r4x(2)

      do i=1,19
         if (mask(i)) r8x(1) = r8x(1) + r8a(i)
      enddo
      write(6,*) r8x(1)
      do i=1,n
         if (mask(i)) r8x(2) = r8x(2) + r8a(i)
      enddo
      write(6,*) r8x(2)
      end


      subroutine simple_test_conv(r4a,r8a,mask,n)
      real r4a(20),r4x
      real*8 r8a(20),r8x
      logical mask(20)
      r4x=0
      do i=1,19
         if (mask(i)) r4x = r4x + r8a(i)
      enddo
      write(6,*) r4x
      r4x=0
      do i=1,n
         if (mask(i)) r4x = r4x + r8a(i)
      enddo
      write(6,*) r4x

      r8x=0
      do i=1,19
         if (mask(i)) r8x = r8x + r4a(i)
      enddo
      write(6,*) r8x
      r8x=0
      do i=1,n
         if (mask(i)) r8x = r8x + r4a(i)
      enddo
      write(6,*) r8x
      end

      subroutine array_test_conv(r4a,r8a,mask,n)
      real r4a(20),r4x(2)/2*0/
      real*8 r8a(20),r8x(2)/2*0/
      logical mask(20)

      do i=1,19
         if (mask(i)) r4x(1) = r4x(1) + r8a(i)
      enddo
      write(6,*) r4x(1)
      do i=1,n
         if (mask(i)) r4x(2) = r4x(2) + r8a(i)
      enddo
      write(6,*) r4x(2)

      do i=1,19
         if (mask(i)) r8x(1) = r8x(1) + r4a(i)
      enddo
      write(6,*) r8x(1)
      do i=1,n
         if (mask(i)) r8x(2) = r8x(2) + r4a(i)
      enddo
      write(6,*) r8x(2)
      end
