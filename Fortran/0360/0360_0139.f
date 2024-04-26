      call i4var
      call i4array
      call r4i4var
      call r4i4array
      end

      subroutine i4var
      integer*4 i4a01(10),i4a02(10)
      integer*4 i4001/1/,i4005
      data i4a01/10*1/,i4a02/10*1/

      do j=1,4
         do i=1,10
            i4005 = i4a02(i)
            i4001 = i4001 - i4a01(i)
            i4a02(i) = 1_4
         enddo
      enddo
      write(6,*) i4001,i4005
      end

      subroutine i4array
      integer*4 i4a01(10),i4a02(10)
      integer*4 i4001(1)/1/,i4005(1)
      data i4a01/10*1/,i4a02/10*1/

      do j=1,4
         do i=1,10
            i4005(1) = i4a02(i)
            i4001(1) = i4001(1) - i4a01(i)
            i4a02(i) = 1_4
         enddo
      enddo
      write(6,*) i4001,i4005
      end

      subroutine r4i4var
      integer*4 i4a01(10),i4a02(10)
      real*4 i4001/1/,i4005
      data i4a01/10*1/,i4a02/10*1/

      do j=1,4
         do i=1,10
            i4005 = i4a02(i)
            i4001 = i4001 - i4a01(i)
            i4a02(i) = 1_4
         enddo
      enddo
      write(6,*) i4001,i4005
      end

      subroutine r4i4array
      integer*4 i4a01(10),i4a02(10)
      real*4 i4001(1)/1/,i4005(1)
      data i4a01/10*1/,i4a02/10*1/

      do j=1,4
         do i=1,10
            i4005(1) = i4a02(i)
            i4001(1) = i4001(1) - i4a01(i)
            i4a02(i) = 1_4
         enddo
      enddo
      write(6,*) i4001,i4005
      end

