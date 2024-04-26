      call test_asin
      call test_dasin
      call test_acos
      call test_dacos
      call test_erf
      call test_derf
      call test_erfc
      call test_derfc
      end

      subroutine test_asin()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      n = 1
      do i=1,10
         a(i) = asin(b(n)/20)
         n = n + 1
      enddo
      write(6,*) a
      end

      subroutine test_dasin()
      real*8 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      n = 1
      do i=1,10
         a(i) = asin(b(n)/20)
         n = n + 1
      enddo
      write(6,*) a
      end

      subroutine test_acos()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      n = 1
      do i=1,10
         a(i) = acos(b(n)/20)
         n = n + 1
      enddo
      write(6,*) a
      end
      subroutine test_dacos()
      real*8 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      n = 1
      do i=1,10
         a(i) = acos(b(n)/20)
         n = n + 1
      enddo
      write(6,*) a
      end

      subroutine test_erf()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      n = 1
      do i=1,10
         a(i) = erf(b(n)/20)
         n = n + 1
      enddo
      write(6,*) a
      end
      subroutine test_derf()
      real*8 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      n = 1
      do i=1,10
         a(i) = erf(b(n)/20)
         n = n + 1
      enddo
      write(6,*) a
      end

      subroutine test_erfc()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      n = 1
      do i=1,10
         a(i) = erfc(b(n)/20)
         n = n + 1
      enddo
      write(6,*) a
      end
      subroutine test_derfc()
      real*8 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      n = 1
      do i=1,10
         a(i) = erfc(b(n)/20)
         n = n + 1
      enddo
      write(6,*) a
      end

