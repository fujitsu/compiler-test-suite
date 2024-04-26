      call i4var
      call i4array
      call i8var
      call i8array
      end

      subroutine i4var
      real*4 i8a01(10),i8a02(10)
      real*4 i8001/1/,i8005
      data i8a01/10*1/,i8a02/10*2/

      do j=1,4
         do i=1,8
            i8005 = i8a02(i)
            i8001 = i8001 + i8a01(i) * i8a02(i)
            i8a02(i) = 1_8
         enddo
      enddo
      write(6,*) i8001,i8005
      end

      subroutine i4array
      real*4 i8a01(10),i8a02(10)
      real*4 i8001(1)/1/,i8005(1)
      data i8a01/10*1/,i8a02/10*2/

      do j=1,4
         do i=1,8
            i8005(1) = i8a02(i)
            i8001(1) = i8001(1) + i8a01(i) * i8a02(i)
            i8a02(i) = 1_8
         enddo
      enddo
      write(6,*) i8001,i8005
      end

      subroutine i8var
      real*8 i8a01(10),i8a02(10)
      real*8 i8001/1/,i8005
      data i8a01/10*1/,i8a02/10*2/

      do j=1,4
         do i=1,8
            i8005 = i8a02(i)
            i8001 = i8001 + i8a01(i) * i8a02(i)
            i8a02(i) = 1_8
         enddo
      enddo
      write(6,*) i8001,i8005
      end

      subroutine i8array
      real*8 i8a01(10),i8a02(10)
      real*8 i8001(1)/1/,i8005(1)
      data i8a01/10*1/,i8a02/10*2/

      do j=1,4
         do i=1,8
            i8005(1) = i8a02(i)
            i8001(1) = i8001(1) + i8a01(i) * i8a02(i)
            i8a02(i) = 1_8
         enddo
      enddo
      write(6,*) i8001,i8005
      end

