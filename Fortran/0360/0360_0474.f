      integer*8 base(16),baseb(16),basec(16)/16*2/

      integer*1 i1(16),i1b(16),i1c(16)/16*2/
      integer*2 i2(16),i2b(16),i2c(16)/16*2/
      integer*4 i4(16),i4b(16),i4c(16)/16*2/
      integer*8 i8(16),i8b(16),i8c(16)/16*2/
      logical*1 l1(16),l1b(16),l1c(16)/8*.false.,8*.true./
      logical*2 l2(16),l2b(16),l2c(16)/8*.false.,8*.true./
      logical*4 l4(16),l4b(16),l4c(16)/8*.false.,8*.true./
      logical*8 l8(16),l8b(16),l8c(16)/8*.false.,8*.true./
      real*4    r4(16),r4b(16),r4c(16)/16*2/
      real*8    r8(16),r8b(16),r8c(16)/16*2/
      real*16   r16(16),r16b(16),r16c(16)/16*2/
      complex*8  c8(16),c8b(16),c8c(16)/16*(2.,5.)/
      complex*16  c16(16),c16b(16),c16c(16)/16*(2.,5.)/
      complex*32  c32(16),c32b(16),c32c(16)/16*(2.,5.)/

      data baseb/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/

      data i1b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      data i2b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      data i4b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      data i8b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      data r4b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      data r8b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      data r16b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      data c8b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      data c16b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      data c32b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16/
      data l1b/4*.true.,4*.false.,4*.true.,4*.false./
      data l2b/4*.true.,4*.false.,4*.true.,4*.false./
      data l4b/4*.true.,4*.false.,4*.true.,4*.false./
      data l8b/4*.true.,4*.false.,4*.true.,4*.false./

      do i=1,16
         i1(i) = i1b(i) + i1c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) i1
      write(6,*) base
      do i=1,16
         i2(i) = i2b(i) + i2c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) i2
      write(6,*) base
      do i=1,16
         i4(i) = i4b(i) + i4c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) i4
      write(6,*) base
      do i=1,16
         i8(i) = i8b(i) + i8c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) i8
      write(6,*) base

      do i=1,16
         r4(i) = r4b(i) + r4c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) r4
      write(6,*) base
      do i=1,16
         r8(i) = r8b(i) + r8c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) r8
      write(6,*) base
      do i=1,16
         r16(i) = r16b(i) + r16c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) r16
      write(6,*) base

      do i=1,16
         c8(i) = c8b(i) + c8c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) c8
      write(6,*) base
      do i=1,16
         c16(i) = c16b(i) + c16c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) c8
      write(6,*) base
      do i=1,16
         c32(i) = c32b(i) + c32c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) c32
      write(6,*) base

      do i=1,16
         l1(i) = l1b(i) .and. l1c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) l1
      write(6,*) base
      do i=1,16
         l2(i) = l2b(i) .and. l2c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) l2
      write(6,*) base
      do i=1,16
         l4(i) = l4b(i) .and. l4c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) l4
      write(6,*) base
      do i=1,16
         l8(i) = l8b(i) .and. l8c(i)
         base(i) = baseb(i) * basec(i)
      enddo
      write(6,*) l8
      write(6,*) base
      end

