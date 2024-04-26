      call i1_test(257)
      call i2_test(257)
      call l1_test(257)
      call l2_test(257)
      call r16_test(257)
      call c8_test(257)
      call c16_test(257)
      call c32_test(257)
      call st_test(257)
      call eq_test(257)
      write(6,*) "ok"
      end

      subroutine i1_test(mm)
      integer*1 a(mm)

      do i=1,mm
         a(i) = 1
      enddo
      call dummyi(a)
      end
      subroutine i2_test(mm)
      integer*1 a(mm)

      do i=1,mm
         a(i) = 1
      enddo
      call dummyi(a)
      end

      subroutine l1_test(mm)
      logical*1 a(mm)

      do i=1,mm
         a(i) = .false.
      enddo
      call dummyl(a)
      end
      subroutine l2_test(mm)
      logical*1 a(mm)

      do i=1,mm
         a(i) = .false.
      enddo
      call dummyl(a)
      end

      subroutine r16_test(mm)
      real*16 a(mm)

      do i=1,mm
         a(i) = 1.0_16
      enddo
      call dummyr(a)
      end

      subroutine c8_test(mm)
      complex*8 a(mm)

      do i=1,mm
         a(i) = 1.0_16
      enddo
      call dummyc(a)
      end
      subroutine c16_test(mm)
      complex*16 a(mm)

      do i=1,mm
         a(i) = 1.0_16
      enddo
      call dummyc(a)
      end
      subroutine c32_test(mm)
      complex*32 a(mm)

      do i=1,mm
         a(i) = 1.0_16
      enddo
      call dummyc(a)
      end

      subroutine st_test(mm)
      structure /aaa/
         real  r4(257)
         integer i4(257)
      end structure
      record /aaa/bbb

      do i=1,mm
         bbb%r4(i) = 1
         bbb%i4(i) = 1
      enddo
      call dummyr(bbb%r4)
      call dummyi(bbb%i4)
      end

      subroutine eq_test(mm)
      real*8 a(257),b(257)
      equivalence(a(1),b)

      do i=1,mm
         b(i) = 1.0
         a(i) = 2.0
      enddo
      call dummyr(a)
      end

      subroutine dummyi(a)
      integer a(257)
      end
      subroutine dummyl(a)
      logical a(257)
      end
      subroutine dummyr(a)
      real a(257)
      end
      subroutine dummyc(a)
      complex a(257)
      end
