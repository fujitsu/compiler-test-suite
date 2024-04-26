      call r4
      call r4u
      call r8
      call r8u
      call r4r8
      call r4r8u
      call r4i8
      call r4i8u
      call r8i8
      call r8i8u
      end

      subroutine r4
      real a(10)
      do i=1,10
         a(i) = i
      enddo
      write(6,1) a
 1    format(10f6.2)
      end
      subroutine r4u
      real a(10)

      do i=1,10
         a(i) = i
      enddo
      write(6,1) a
 1    format(10f6.2)
      end
      subroutine r8
      real*8 a(10)
      do i=1,10
         a(i) = i
      enddo
      write(6,1) a
 1    format(10f6.2)
      end
      subroutine r8u
      real*8 a(10)

      do i=1,10
         a(i) = i
      enddo
      write(6,1) a
 1    format(10f6.2)
      end
      subroutine r4r8
      real a(10)
      real*8 b(10)
      do i=1,10
         a(i) = i
         b(i) = i
      enddo
      write(6,1) a
      write(6,1) b
 1    format(10f6.2)
      end
      subroutine r4r8u
      real      a(10)
      real*8 b(10)

      do i=1,10
         a(i) = i
         b(i) = i
      enddo
      write(6,1) a
      write(6,1) b
 1    format(10f6.2)
      end
      subroutine r4i8
      real a(10)
      integer*8 b(10)
      do i=1,10
         a(i) = i
         b(i) = i
      enddo
      write(6,1) a
      write(6,*) b
 1    format(10f6.2)
      end
      subroutine r4i8u
      real      a(10)
      integer*8 b(10)

      do i=1,10
         a(i) = i
         b(i) = i
      enddo
      write(6,1) a
      write(6,*) b
 1    format(10f6.2)
      end
      subroutine r8i8
      real*8 a(10)
      integer*8 b(10)
      do i=1,10
         a(i) = i
         b(i) = i
      enddo
      write(6,1) a
      write(6,*) b
 1    format(10f6.2)
      end
      subroutine r8i8u
      real*8      a(10)
      integer*8 b(10)

      do i=1,10
         a(i) = i
         b(i) = i
      enddo
      write(6,1) a
      write(6,*) b
 1    format(10f6.2)
      end
