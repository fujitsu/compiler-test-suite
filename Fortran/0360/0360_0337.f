      integer*1 i1(10)
      integer*2 i2(10)
      integer*4 i4(10)
      integer*8 i8(10)
      logical*1 l1(10)
      logical*2 l2(10)
      logical*4 l4(10)
      logical*8 l8(10)
      real*4 r4(10)
      real*8 r8(10)
      real*16 r16(10)
      complex*8 c8(10)
      complex*16 c16(10)
      complex*32 c32(10)
      integer*8 j

      do i=1,10
         r8(i) = i
         i1(i) = i
      enddo
      write(6,*) i1,r8

      do i=1,10
         r8(i) = i
         i2(i) = i
      enddo
      write(6,*) i2,r8

      do i=1,10
         r8(i) = i
         i4(i) = i
      enddo
      write(6,*) i4,r8

      do i=1,10
         r8(i) = i
         i8(i) = i
      enddo
      write(6,*) i8,r8

      do i=1,10
         r8(i) = i
         l1(i) = i
      enddo
      write(6,*) l1,r8

      do i=1,10
         r8(i) = i
         l2(i) = i
      enddo
      write(6,*) l2,r8

      do i=1,10
         r8(i) = i
         l4(i) = i
      enddo
      write(6,*) l4,r8

      do i=1,10
         r8(i) = i
         l8(i) = i
      enddo
      write(6,*) l8,r8

      do i=1,10
         r8(i) = i
         r4(i) = i
      enddo
      write(6,*) r4,r8

      do i=1,10
         r8(i) = i
         r8(i) = i
      enddo
      write(6,*) r8,r8

      do i=1,10
         r8(i) = i
         r16(i) = i
      enddo
      write(6,*) r16,r8

      do i=1,10
         r8(i) = i
         c8(i) = i
      enddo
      write(6,*) c8,r8

      do i=1,10
         r8(i) = i
         c16(i) = i
      enddo
      write(6,*) c16,r8

      do i=1,10
         r8(i) = i
         c32(i) = i
      enddo
      write(6,*) c32,r8



      do j=1,10
         r8(j) = j
         i1(j) = j
      enddo
      write(6,*) i1,r8

      do j=1,10
         r8(j) = j
         i2(j) = j
      enddo
      write(6,*) i2,r8

      do j=1,10
         r8(j) = j
         i4(j) = j
      enddo
      write(6,*) i4,r8

      do j=1,10
         r8(j) = j
         i8(j) = j
      enddo
      write(6,*) i8,r8

      do j=1,10
         r8(j) = j
         l1(j) = j
      enddo
      write(6,*) l1,r8

      do j=1,10
         r8(j) = j
         l2(j) = j
      enddo
      write(6,*) l2,r8

      do j=1,10
         r8(j) = j
         l4(j) = j
      enddo
      write(6,*) l4,r8

      do j=1,10
         r8(j) = j
         l8(j) = j
      enddo
      write(6,*) l8,r8

      do j=1,10
         r8(j) = j
         r4(j) = j
      enddo
      write(6,*) r4,r8

      do j=1,10
         r8(j) = j
         r8(j) = j
      enddo
      write(6,*) r8,r8

      do j=1,10
         r8(j) = j
         r16(j) = j
      enddo
      write(6,*) r16,r8

      do j=1,10
         r8(j) = j
         c8(j) = j
      enddo
      write(6,*) c8,r8

      do j=1,10
         r8(j) = j
         c16(j) = j
      enddo
      write(6,*) c16,r8

      do j=1,10
         r8(j) = j
         c32(j) = j
      enddo
      write(6,*) c32,r8


      end

