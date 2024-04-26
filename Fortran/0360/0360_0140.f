      call i4var
      call i4array
      call r4i4var
      call r4i4array
      end

      subroutine i4var
      integer*4 i4a01(10),i4a02(10)
      integer*4 i4001/1/,i4005
      integer*8 i8a(10)
      data i4a01/10*1/,i4a02/10*1/

      do j=1,4
         do i=1,10
            i4005 = i4a02(i)
            i4001 = i4001 - i4a01(i)
            i4a02(i) = 1_4
            i8a(i) = i
         enddo
      enddo
      write(6,*) i4001,i4005,i8a
      end

      subroutine i4array
      integer*4 i4a01(10),i4a02(10)
      integer*4 i4001(1)/1/,i4005(1)
      integer*8 i8a(10)
      data i4a01/10*1/,i4a02/10*1/

      do j=1,4
         do i=1,10
            i4005(1) = i4a02(i)
            i4001(1) = i4001(1) - i4a01(i)
            i4a02(i) = 1_4
            i8a(i) = i
         enddo
      enddo
      write(6,*) i4001,i4005,i8a
      end

      subroutine r4i4var
      integer*4 i4a01(10),i4a02(10)
      real*4 i4001/1/,i4005
      integer*8 i8a(10)
      data i4a01/10*1/,i4a02/10*1/

      do j=1,4
         do i=1,10
            i4005 = i4a02(i)
            i4001 = i4001 - i4a01(i)
            i4a02(i) = 1_4
            i8a(i) = i
         enddo
      enddo
      write(6,*) i4001,i4005,i8a
      end

      subroutine r4i4array
      integer*4 i4a01(10),i4a02(10)
      real*4 i4001(1)/1/,i4005(1)
      integer*8 i8a(10)
      data i4a01/10*1/,i4a02/10*1/

      do j=1,4
         do i=1,10
            i4005(1) = i4a02(i)
            i4001(1) = i4001(1) - i4a01(i)
            i4a02(i) = 1_4
            i8a(i) = i
         enddo
      enddo
      write(6,*) i4001,i4005,i8a
      end

