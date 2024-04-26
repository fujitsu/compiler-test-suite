      call i4(1,10)
      call i4u(1,10)
      call i8(1,10)
      call i8u(1,10)
      call i4i8(1,10)
      call i4i8u(1,10)
      end

      subroutine i4(n,m)
      integer a(10)
      do i=n,m
         a(i) = i
      enddo
      write(6,*) a
      end
      subroutine i4u(n,m)
      integer a(10)

      do i=n,m
         a(i) = i
      enddo
      write(6,*) a
      end
      subroutine i8(n,m)
      integer*8 a(10)
      do i=n,m
         a(i) = i
      enddo
      write(6,*) a
      end
      subroutine i8u(n,m)
      integer*8 a(10)

      do i=n,m
         a(i) = i
      enddo
      write(6,*) a
      end
      subroutine i4i8(n,m)
      integer*4 a(10)
      integer*8 b(10)
      do i=n,m
         a(i) = i
         b(i) = i
      enddo
      write(6,*) a
      write(6,*) b
      end
      subroutine i4i8u(n,m)
      integer*4 a(10)
      integer*8 b(10)

      do i=n,m
         a(i) = i
         b(i) = i
      enddo
      write(6,*) a
      write(6,*) b
      end
