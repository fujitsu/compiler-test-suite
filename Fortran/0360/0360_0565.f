      call i1_test()
      call i2_test()
      call l1_test()
      call l2_test()
      call r16_test()
      call c8_test()
      call c16_test()
      call c32_test()
      call st_test()
      call eq_test()
      write(6,*) "ok"
      end

      subroutine i1_test()
      integer*1 a(256)

      do i=1,256
         a(i) = 1
      enddo
      call dummyi(a)
      end
      subroutine i2_test()
      integer*1 a(256)

      do i=1,256
         a(i) = 1
      enddo
      call dummyi(a)
      end

      subroutine l1_test()
      logical*1 a(256)

      do i=1,256
         a(i) = .false.
      enddo
      call dummyl(a)
      end
      subroutine l2_test()
      logical*1 a(256)

      do i=1,256
         a(i) = .false.
      enddo
      call dummyl(a)
      end

      subroutine r16_test()
      real*16 a(256)

      do i=1,256
         a(i) = 1.0_16
      enddo
      call dummyr(a)
      end

      subroutine c8_test()
      complex*8 a(256)

      do i=1,256
         a(i) = 1.0_16
      enddo
      call dummyc(a)
      end
      subroutine c16_test()
      complex*16 a(256)

      do i=1,256
         a(i) = 1.0_16
      enddo
      call dummyc(a)
      end
      subroutine c32_test()
      complex*32 a(256)

      do i=1,256
         a(i) = 1.0_16
      enddo
      call dummyc(a)
      end

      subroutine st_test()
      structure /aaa/
         real  r4(256)
         integer i4(256)
      end structure
      record /aaa/bbb

      do i=1,256
         bbb%r4(i) = 1
         bbb%i4(i) = 1
      enddo
      call dummyr(bbb%r4)
      call dummyi(bbb%i4)
      end

      subroutine eq_test()
      real*8 a(256),b(256)
      equivalence(a(1),b)

      do i=1,256
         b(i) = 1.0
         a(i) = 2.0
      enddo
      call dummyr(a)
      end

      subroutine dummyi(a)
      integer a(256)
      end
      subroutine dummyl(a)
      logical a(256)
      end
      subroutine dummyr(a)
      real a(256)
      end
      subroutine dummyc(a)
      complex a(256)
      end
