      integer*8  base(21)/1,2,3,4,5,6,7,8,9,10,
     +                     11,12,13,14,15,16,17,18,19,20,21/
      integer*8  base2(21)/21,22,23,24,25,26,27,28,29,30,
     +                      31,32,33,34,35,36,37,38,39,40,41/

      integer*1 i1(21)
      integer*2 i2(21)
      integer*4 i4(21)
      integer*8 i8(21)
      logical*1 l1(21)
      logical*2 l2(21)
      logical*4 l4(21)
      logical*8 l8(21)
      real*4    r4(21)
      real*8    r8(21)
      real*16   r16(21)
      complex*8  c8(21)
      complex*16  c16(21)
      complex*32  c32(21)

      do i=1,21
         i1(2) = base(i)
      enddo
      write(6,*) 'i1 ',i1(2)

      do i=1,21
         i2(2) = base(i)
      enddo
      write(6,*) 'i2 ',i2(2)

      do i=1,21
         i4(2) = base(i)
      enddo
      write(6,*) 'i4 ',i4(2)

      do i=1,21
         i8(2) = base(i)
      enddo
      write(6,*) 'i8 ',i8(2)

      do i=1,21
         l1(2) = base(i)
      enddo
      write(6,*) 'l1 ',l1(2)

      do i=1,21
         l2(2) = base(i)
      enddo
      write(6,*) 'l2 ',l2(2)
      do i=1,21
         l4(2) = base(i)
      enddo
      write(6,*) 'l4 ',l4(2)

      do i=1,21
         l8(2) = base(i)
      enddo
      write(6,*) 'l8 ',l8(2)

      do i=1,21
         r4(2) = base(i)
      enddo
      write(6,*) 'r4 ',r4(2)

      do i=1,21
         r8(2) = base(i)
      enddo
      write(6,*) 'r8 ',r8(2)

      do i=1,21
         r16(2) = base(i)
      enddo
      write(6,*) 'r16 ',r16(2)

      do i=1,21
         c8(2) = base(i)
      enddo
      write(6,*) 'c8 ',c8(2)

      do i=1,21
         c16(2) = base(i)
      enddo
      write(6,*) 'c16 ',c16(2)

      do i=1,21
         c32(2) = base(i)
      enddo
      write(6,*) 'c32 ',c32(2)

      do i=1,16
         i1(2) = base2(i)
      enddo
      write(6,*) 'i1 ',i1(2)

      do i=1,16
         i2(2) = base2(i)
      enddo
      write(6,*) 'i2 ',i2(2)

      do i=1,16
         i4(2) = base2(i)
      enddo
      write(6,*) 'i4 ',i4(2)

      do i=1,16
         i8(2) = base2(i)
      enddo
      write(6,*) 'i8 ',i8(2)

      do i=1,16
         l1(2) = base2(i)
      enddo
      write(6,*) 'l1 ',l1(2)

      do i=1,16
         l2(2) = base2(i)
      enddo
      write(6,*) 'l2 ',l2(2)
      do i=1,16
         l4(2) = base2(i)
      enddo
      write(6,*) 'l4 ',l4(2)

      do i=1,16
         l8(2) = base2(i)
      enddo
      write(6,*) 'l8 ',l8(2)

      do i=1,16
         r4(2) = base2(i)
      enddo
      write(6,*) 'r4 ',r4(2)

      do i=1,16
         r8(2) = base2(i)
      enddo
      write(6,*) 'r8 ',r8(2)

      do i=1,16
         r16(2) = base2(i)
      enddo
      write(6,*) 'r16 ',r16(2)

      do i=1,16
         c8(2) = base2(i)
      enddo
      write(6,*) 'c8 ',c8(2)

      do i=1,16
         c16(2) = base2(i)
      enddo
      write(6,*) 'c16 ',c16(2)

      do i=1,16
         c32(2) = base2(i)
      enddo
      write(6,*) 'c32 ',c32(2)

      end
