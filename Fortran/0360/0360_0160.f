      call i8a
      call i8au
      call i8b
      call i8bu
      call i4i8a
      call i4i8au
      end

      subroutine i8a
      integer*8 a(10),b(10),c(10)
      nn = ifunc(2)
      do i=1,10
         a(i) = i
         b(i) = i*2
         c(i) = i*nn
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) c
      end
      subroutine i8au
      integer*8 a(10),b(10),c(10)
      nn = ifunc(2)

      do i=1,10
         a(i) = i
         b(i) = i*2
         c(i) = i*nn
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) c
      end

      subroutine i8b
      integer*8 a(10),b(10)
      n = 1
      do i=1,10
         a(i) = i
         b(i) = n
         n = n + 2
      enddo
      write(6,*) a
      write(6,*) b
      end
      subroutine i8bu
      integer*8 a(10),b(10)
      n = 1

      do i=1,10
         a(i) = i
         b(i) = n
         n = n + 2
      enddo
      write(6,*) a
      write(6,*) b
      end
      subroutine i4i8a
      integer*4 a(10)
      integer*8 b(10),c(10)
      n = 1
      do i=1,10
         a(i) = i
         b(i) = n
         n = n + 2
         c(i) = i*3
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) c
      end
      subroutine i4i8au
      integer*4 a(10)
      integer*8 b(10),c(10)
      n = 1

      do i=1,10
         a(i) = i
         b(i) = n
         n = n + 2
         c(i) = i*3
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) c
      end

      integer function ifunc(nn)
      ifunc = -nn
      return
      end
