      real*4 r4(10)/10*0/
      real*8 r8(10)/10*0/
      integer*4 i4(10)/10*0/
      integer*8 i8(10)/10*0/

      n = ifunc(10)

      do i=1,7
         r4(i) = 1
      enddo
      write(6,*) r4

      do i=1,8
         r4(i) = 1
      enddo
      write(6,*) r4

      do i=1,n
         r4(i) = 1
      enddo
      write(6,*) r4


      do i=1,3
         r8(i) = 1
      enddo
      write(6,*) r8

      do i=1,4
         r8(i) = 1
      enddo
      write(6,*) r8

      do i=1,n
         r8(i) = 1
      enddo
      write(6,*) r8


      do i=1,7
         i4(i) = 1
      enddo
      write(6,*) i4

      do i=1,8
         i4(i) = 1
      enddo
      write(6,*) i4

      do i=1,n
         i4(i) = 1
      enddo
      write(6,*) i4


      do i=1,7
         i8(i) = 1
      enddo
      write(6,*) i8

      do i=1,8
         i8(i) = 1
      enddo
      write(6,*) i8

      do i=1,n
         i8(i) = 1
      enddo
      write(6,*) i8
      end

      integer function ifunc(nn)
      ifunc = nn
      return
      end
