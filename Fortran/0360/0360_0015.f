      logical*4   l4a(20)
      logical*8 l8a(20)
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
         l4a(i) = mod(i,3) .eq. 0
         l8a(i) = mod(i,3) .eq. 0
      enddo

      call simple_test(l4a,l8a,mask1,19)
      call array_test(l4a,l8a,mask1,19)
      call simple_test_conv(l4a,l8a,mask1,19)
      call array_test_conv(l4a,l8a,mask1,19)
      call simple_test(l4a,l8a,mask2,19)
      call array_test(l4a,l8a,mask2,19)
      call simple_test_conv(l4a,l8a,mask2,19)
      call array_test_conv(l4a,l8a,mask2,19)
      call simple_test(l4a,l8a,mask1,20)
      call array_test(l4a,l8a,mask1,20)
      call simple_test_conv(l4a,l8a,mask1,20)
      call array_test_conv(l4a,l8a,mask1,20)
      call simple_test(l4a,l8a,mask2,20)
      call array_test(l4a,l8a,mask2,20)
      call simple_test_conv(l4a,l8a,mask2,20)
      call array_test_conv(l4a,l8a,mask2,20)
      end

      subroutine simple_test(l4a,l8a,mask,n)
      logical*4 l4a(20),l4x
      logical*8 l8a(20),l8x
      logical mask(20)
      l4x=0
      do i=1,19
         if (mask(i)) l4x = l4x .and. l4a(i)
      enddo
      write(6,*) l4x
      l4x=0
      do i=1,n
         if (mask(i)) l4x = l4x .and. l4a(i)
      enddo
      write(6,*) l4x

      l8x=0
      do i=1,19
         if (mask(i)) l8x = l8x .and. l8a(i)
      enddo
      write(6,*) l8x
      l8x=0
      do i=1,n
         if (mask(i)) l8x = l8x .and. l8a(i)
      enddo
      write(6,*) l8x
      end

      subroutine array_test(l4a,l8a,mask,n)
      logical*4 l4a(20),l4x(2)/2*0/
      logical*8 l8a(20),l8x(2)/2*0/
      logical mask(20)

      do i=1,19
         if (mask(i)) l4x(1) = l4x(1) .and. l4a(i)
      enddo
      write(6,*) l4x(1)
      do i=1,n
         if (mask(i)) l4x(2) = l4x(2) .and. l4a(i)
      enddo
      write(6,*) l4x(2)

      do i=1,19
         if (mask(i)) l8x(1) = l8x(1) .and. l8a(i)
      enddo
      write(6,*) l8x(1)
      do i=1,n
         if (mask(i)) l8x(2) = l8x(2) .and. l8a(i)
      enddo
      write(6,*) l8x(2)
      end


      subroutine simple_test_conv(l4a,l8a,mask,n)
      logical*4 l4a(20),l4x
      logical*8 l8a(20),l8x
      logical mask(20)
      l4x=0
      do i=1,19
         if (mask(i)) l4x = l4x .and. l8a(i)
      enddo
      write(6,*) l4x
      l4x=0
      do i=1,n
         if (mask(i)) l4x = l4x .and. l8a(i)
      enddo
      write(6,*) l4x

      l8x=0
      do i=1,19
         if (mask(i)) l8x = l8x .and. l4a(i)
      enddo
      write(6,*) l8x
      l8x=0
      do i=1,n
         if (mask(i)) l8x = l8x .and. l4a(i)
      enddo
      write(6,*) l8x
      end

      subroutine array_test_conv(l4a,l8a,mask,n)
      logical*4 l4a(20),l4x(2)/2*0/
      logical*8 l8a(20),l8x(2)/2*0/
      logical mask(20)

      do i=1,19
         if (mask(i)) l4x(1) = l4x(1) .and. l8a(i)
      enddo
      write(6,*) l4x(1)
      do i=1,n
         if (mask(i)) l4x(2) = l4x(2) .and. l8a(i)
      enddo
      write(6,*) l4x(2)

      do i=1,19
         if (mask(i)) l8x(1) = l8x(1) .and. l4a(i)
      enddo
      write(6,*) l8x(1)
      do i=1,n
         if (mask(i)) l8x(2) = l8x(2) .and. l4a(i)
      enddo
      write(6,*) l8x(2)
      end
