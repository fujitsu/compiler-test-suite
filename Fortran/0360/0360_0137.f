      call i8var
      call i8array
      call i8r8var
      call i8r8array
      end

      subroutine i8var
      integer*8 i8a01(10),i8a02(10)
      integer*8 i8001/1/,i8005
      data i8a01/10*1/,i8a02/10*1/

      do j=1,4
         do i=1,10
            i8005 = i8a02(i)
            i8001 = i8001 + i8a01(i)
            i8a02(i) = 1_8
         enddo
      enddo
      write(6,*) i8001,i8005
      end

      subroutine i8array
      integer*8 i8a01(10),i8a02(10)
      integer*8 i8001(1)/1/,i8005(1)
      data i8a01/10*1/,i8a02/10*1/

      do j=1,4
         do i=1,10
            i8005(1) = i8a02(i)
            i8001(1) = i8001(1) + i8a01(i)
            i8a02(i) = 1_8
         enddo
      enddo
      write(6,*) i8001,i8005
      end

      subroutine i8r8var
      real*8 i8a01(10),i8a02(10)
      integer*8 i8001(1)/1/,i8005(1)
      data i8a01/10*1/,i8a02/10*1/

      do j=1,4
         do i=1,10
            i8005(1) = i8a02(i)
            i8001(1) = i8001(1) + i8a01(i)
            i8a02(i) = 1_8
         enddo
      enddo
      write(6,*) i8001,i8005
      end

      subroutine i8r8array
      real*8 i8a01(10),i8a02(10)
      integer*8 i8001(1)/1/,i8005(1)
      data i8a01/10*1/,i8a02/10*1/

      do j=1,4
         do i=1,10
            i8005(1) = i8a02(i)
            i8001(1) = i8001(1) + i8a01(i)
            i8a02(i) = 1_8
         enddo
      enddo
      write(6,*) i8001,i8005
      end
