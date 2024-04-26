      call i4_test()
      call l4_test()
      call r4_test()

      call i8_test()
      call l8_test()
      call r8_test()
      write(6,*) "ok"
      end

      subroutine i4_test()
      integer a(256)

      do i=1,256
         a(i) = 1
      enddo
      call dummyi4(a)
      end

      subroutine l4_test()
      logical a(256)

      do i=1,256
         a(i) = .true.
      enddo
      call dummyl4(a)
      end

      subroutine r4_test()
      real a(256)

      do i=1,256
         a(i) = 1
      enddo
      call dummyr4(a)
      end

      subroutine dummyi4(a)
      integer a(256)
      end
      subroutine dummyl4(a)
      logical a(256)
      end
      subroutine dummyr4(a)
      real a(256)
      end


      subroutine i8_test()
      integer*8 a(256)

      do i=1,256
         a(i) = 1
      enddo
      call dummyi8(a)
      end

      subroutine l8_test()
      logical*8 a(256)

      do i=1,256
         a(i) = .true.
      enddo
      call dummyl8(a)
      end

      subroutine r8_test()
      real*8 a(256)

      do i=1,256
         a(i) = 1
      enddo
      call dummyr8(a)
      end

      subroutine dummyi8(a)
      integer*8 a(256)
      end
      subroutine dummyl8(a)
      logical*8 a(256)
      end
      subroutine dummyr8(a)
      real*8 a(256)
      end


      
