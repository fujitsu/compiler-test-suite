      integer*8  base(10)/1,2,3,4,5,6,7,8,9,10/
      integer*8  base2(10)/11,12,13,14,15,16,17,18,19,20/

      integer*1 i1(10)/10*0/
      integer*2 i2(10)/10*0/
      integer*4 i4(10)/10*0/
      integer*8 i8(10)/10*0/
      logical*1 l1(10)/10*0/
      logical*2 l2(10)/10*0/
      logical*4 l4(10)/10*0/
      logical*8 l8(10)/10*0/
      real*4    r4(10)/10*0/
      real*8    r8(10)/10*0/
      real*16   r16(10)/10*0/
      complex*8  c8(10)/10*0/
      complex*16  c16(10)/10*0/
      complex*32  c32(10)/10*0/


      do i=1,3
         i1(i) = base(i)
      enddo
      write(6,*) 'i1 ',i1


      do i=1,3
         i2(i) = base(i)
      enddo
      write(6,*) 'i2 ',i2


      do i=1,3
         i4(i) = base(i)
      enddo
      write(6,*) 'i4 ',i4


      do i=1,3
         i8(i) = base(i)
      enddo
      write(6,*) 'i8 ',i8


      do i=1,3
         l1(i) = base(i)
      enddo
      write(6,*) 'l1 ',l1


      do i=1,3
         l2(i) = base(i)
      enddo
      write(6,*) 'l2 ',l2


      do i=1,3
         l4(i) = base(i)
      enddo
      write(6,*) 'l4 ',l4


      do i=1,3
         l8(i) = base(i)
      enddo
      write(6,*) 'l8 ',l8


      do i=1,3
         r4(i) = base(i)
      enddo
      write(6,*) 'r4 ',r4


      do i=1,3
         r8(i) = base(i)
      enddo
      write(6,*) 'r8 ',r8


      do i=1,3
         r16(i) = base(i)
      enddo
      write(6,*) 'r16 ',r16


      do i=1,3
         c8(i) = base(i)
      enddo
      write(6,*) 'c8 ',c8


      do i=1,3
         c16(i) = base(i)
      enddo
      write(6,*) 'c16 ',c16


      do i=1,3
         c32(i) = base(i)
      enddo
      write(6,*) 'c32 ',c32


      do i=1,7
         i1(i) = base2(i)
      enddo
      write(6,*) 'i1 ',i1


      do i=1,7
         i2(i) = base2(i)
      enddo
      write(6,*) 'i2 ',i2


      do i=1,7
         i4(i) = base2(i)
      enddo
      write(6,*) 'i4 ',i4


      do i=1,7
         i8(i) = base2(i)
      enddo
      write(6,*) 'i8 ',i8


      do i=1,7
         l1(i) = base2(i)
      enddo
      write(6,*) 'l1 ',l1


      do i=1,7
         l2(i) = base2(i)
      enddo
      write(6,*) 'l2 ',l2


      do i=1,7
         l4(i) = base2(i)
      enddo
      write(6,*) 'l4 ',l4


      do i=1,7
         l8(i) = base2(i)
      enddo
      write(6,*) 'l8 ',l8


      do i=1,7
         r4(i) = base2(i)
      enddo
      write(6,*) 'r4 ',r4


      do i=1,7
         r8(i) = base2(i)
      enddo
      write(6,*) 'r8 ',r8


      do i=1,7
         r16(i) = base2(i)
      enddo
      write(6,*) 'r16 ',r16


      do i=1,7
         c8(i) = base2(i)
      enddo
      write(6,*) 'c8 ',c8


      do i=1,7
         c16(i) = base2(i)
      enddo
      write(6,*) 'c16 ',c16


      do i=1,7
         c32(i) = base2(i)
      enddo
      write(6,*) 'c32 ',c32

      end
