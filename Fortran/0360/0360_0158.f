      call i4
      call i4u
      call i8
      call i8u
      call i4i8
      call i4i8u
      end

      subroutine i4
      integer a(10)
      do i=1,10
         a(i) = i
      enddo
      write(6,*) a
      end
      subroutine i4u
      integer a(10)

      do i=1,10
         a(i) = i
      enddo
      write(6,*) a
      end
      subroutine i8
      integer*8 a(10)
      do i=1,10
         a(i) = i
      enddo
      write(6,*) a
      end
      subroutine i8u
      integer*8 a(10)

      do i=1,10
         a(i) = i
      enddo
      write(6,*) a
      end
      subroutine i4i8
      integer*4 a(10)
      integer*8 b(10)
      do i=1,10
         a(i) = i
         b(i) = i
      enddo
      write(6,*) a
      write(6,*) b
      end
      subroutine i4i8u
      integer*4 a(10)
      integer*8 b(10)

      do i=1,10
         a(i) = i
         b(i) = i
      enddo
      write(6,*) a
      write(6,*) b
      end
