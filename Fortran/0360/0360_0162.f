      call i8a(1,10)
      call i8au(1,10)
      call i8b(1,10)
      call i8bu(1,10)
      call i4i8a(1,10)
      call i4i8au(1,10)
      end

      subroutine i8a(n1,n2)
      integer*8 a(10),b(10),c(10)
      nn = ifunc(2)
      do i=n1,n2
         a(i) = i
         b(i) = i*2
         c(i) = i*nn
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) c
      end
      subroutine i8au(n1,n2)
      integer*8 a(10),b(10),c(10)
      nn = ifunc(2)

      do i=n1,n2
         a(i) = i
         b(i) = i*2
         c(i) = i*nn
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) c
      end

      subroutine i8b(n1,n2)
      integer*8 a(10),b(10)
      n = n1+2
      do i=n1,n2
         a(i) = i
         b(i) = n
         n = n + 2
      enddo
      write(6,*) a
      write(6,*) b
      end
      subroutine i8bu(n1,n2)
      integer*8 a(10),b(10)
      n = n1+2

      do i=n1,n2
         a(i) = i
         b(i) = n
         n = n + 2
      enddo
      write(6,*) a
      write(6,*) b
      end
      subroutine i4i8a(n1,n2)
      integer*4 a(10)
      integer*8 b(10),c(10)
      n = n1+1
      do i=n1,n2
         a(i) = i
         b(i) = n
         n = n + 2
         c(i) = i*3
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) c
      end
      subroutine i4i8au(n1,n2)
      integer*4 a(10)
      integer*8 b(10),c(10)
      n = n1+1

      do i=n1,n2
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
