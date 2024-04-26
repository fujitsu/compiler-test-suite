      integer*4   i4a(20)
      integer*8 i8a(20)
      do i=1,20
         i4a(i) = i
         i8a(i) = i
      enddo

      call simple_test(i4a,i8a,19)
      call array_test(i4a,i8a,19)
      call simple_test_conv(i4a,i8a,19)
      call array_test_conv(i4a,i8a,19)
      call simple_test(i4a,i8a,20)
      call array_test(i4a,i8a,20)
      call simple_test_conv(i4a,i8a,20)
      call array_test_conv(i4a,i8a,20)
      end

      subroutine simple_test(i4a,i8a,n)
      integer*4 i4a(20),i4x
      integer*8 i8a(20),i8x
      i4x=0
      do i=1,19
         i4x = i4x + i4a(i)
      enddo
      write(6,*) i4x
      i4x=0
      do i=1,n
         i4x = i4x + i4a(i)
      enddo
      write(6,*) i4x

      i8x=0
      do i=1,19
         i8x = i8x + i8a(i)
      enddo
      write(6,*) i8x
      i8x=0
      do i=1,n
         i8x = i8x + i8a(i)
      enddo
      write(6,*) i8x
      end

      subroutine array_test(i4a,i8a,n)
      integer*4 i4a(20),i4x(2)/2*0/
      integer*8 i8a(20),i8x(2)/2*0/

      do i=1,19
         i4x(1) = i4x(1) + i4a(i)
      enddo
      write(6,*) i4x(1)
      do i=1,n
         i4x(2) = i4x(2) + i4a(i)
      enddo
      write(6,*) i4x(2)

      do i=1,19
         i8x(1) = i8x(1) + i8a(i)
      enddo
      write(6,*) i8x(1)
      do i=1,n
         i8x(2) = i8x(2) + i8a(i)
      enddo
      write(6,*) i8x(2)
      end


      subroutine simple_test_conv(i4a,i8a,n)
      integer*4 i4a(20),i4x
      integer*8 i8a(20),i8x
      i4x=0
      do i=1,19
         i4x = i4x + i8a(i)
      enddo
      write(6,*) i4x
      i4x=0
      do i=1,n
         i4x = i4x + i8a(i)
      enddo
      write(6,*) i4x

      i8x=0
      do i=1,19
         i8x = i8x + i4a(i)
      enddo
      write(6,*) i8x
      i8x=0
      do i=1,n
         i8x = i8x + i4a(i)
      enddo
      write(6,*) i8x
      end

      subroutine array_test_conv(i4a,i8a,n)
      integer*4 i4a(20),i4x(2)/2*0/
      integer*8 i8a(20),i8x(2)/2*0/

      do i=1,19
         i4x(1) = i4x(1) + i8a(i)
      enddo
      write(6,*) i4x(1)
      do i=1,n
         i4x(2) = i4x(2) + i8a(i)
      enddo
      write(6,*) i4x(2)

      do i=1,19
         i8x(1) = i8x(1) + i4a(i)
      enddo
      write(6,*) i8x(1)
      do i=1,n
         i8x(2) = i8x(2) + i4a(i)
      enddo
      write(6,*) i8x(2)
      end
