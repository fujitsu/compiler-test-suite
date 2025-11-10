      integer*1  base(21)/1,2,3,4,5,6,7,8,9,10,
     +                     11,12,13,14,15,16,17,18,19,20,21/
      integer*1  base2(21)/21,22,23,24,25,26,27,28,29,30,
     +                      31,32,33,34,35,36,37,38,39,40,41/

      integer*1 i1(21)/21*0/
      integer*2 i2(21)/21*0/
      integer*4 i4(21)/21*0/
      integer*8 i8(21)/21*0/
      real*4    r4(21)/21*0/
      real*8    r8(21)/21*0/
      real*16   r16(21)/21*0/
      complex*8  c8(21)/21*0/
      complex*16  c16(21)/21*0/
      complex*32  c32(21)/21*0/

      do i=1,21
         i1(2) = i1(2) + base(i)
      enddo
      write(6,*) 'i1 ',i1(2)

      do i=1,21
         i2(2) = i2(2) + base(i)
      enddo
      write(6,*) 'i2 ',i2(2)

      do i=1,21
         i4(2) = i4(2) + base(i)
      enddo
      write(6,*) 'i4 ',i4(2)

      do i=1,21
         i8(2) = i8(2) + base(i)
      enddo
      write(6,*) 'i8 ',i8(2)

      do i=1,21
         r4(2) = r4(2) + base(i)
      enddo
      write(6,*) 'r4 ',r4(2)

      do i=1,21
         r8(2) = r8(2) + base(i)
      enddo
      write(6,*) 'r8 ',r8(2)

      do i=1,21
         r16(2) = r16(2) + base(i)
      enddo
      write(6,*) 'r16 ',r16(2)

      do i=1,21
         c8(2) = c8(2) + base(i)
      enddo
      write(6,*) 'c8 ',c8(2)

      do i=1,21
         c16(2) = c16(2) + base(i)
      enddo
      write(6,*) 'c16 ',c16(2)

      do i=1,21
         c32(2) = c32(2) + base(i)
      enddo
      write(6,*) 'c32 ',c32(2)

      do i=1,16
         i1(4) = i1(4) + base2(i)
      enddo
      write(6,*) 'i1 ',i1(4)

      do i=1,16
         i2(4) = i2(4) + base2(i)
      enddo
      write(6,*) 'i2 ',i2(4)

      do i=1,16
         i4(4) = i4(4) + base2(i)
      enddo
      write(6,*) 'i4 ',i4(4)

      do i=1,16
         i8(4) = i8(4) + base2(i)
      enddo
      write(6,*) 'i8 ',i8(4)

      do i=1,16
         r4(4) = r4(4) + base2(i)
      enddo
      write(6,*) 'r4 ',r4(4)

      do i=1,16
         r8(4) = r8(4) + base2(i)
      enddo
      write(6,*) 'r8 ',r8(4)

      do i=1,16
         r16(4) = r16(4) + base2(i)
      enddo
      write(6,*) 'r16 ',r16(4)

      do i=1,16
         c8(4) = c8(4) + base2(i)
      enddo
      write(6,*) 'c8 ',c8(4)

      do i=1,16
         c16(4) = c16(4) + base2(i)
      enddo
      write(6,*) 'c16 ',c16(4)

      do i=1,16
         c32(4) = c32(4) + base2(i)
      enddo
      write(6,*) 'c32 ',c32(4)

      end
