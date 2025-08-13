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
      real,volatile :: a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      real res(10)/0.5235988, 0.4667653, 0.41151685,
     +     0.3575711, 0.30469266, 0.25268024, 0.20135793, 0.15056827,
     +     0.10016742, 5.002086E-02/
      real c(10)
      do i=1,10
         a(i) = asin(b(i)/20)
      enddo
      c = a
      call check(c,res)
      end

      subroutine test_dasin()
      real(8),volatile :: a(10),b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         a(i) = asin(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_acos()
      real,volatile :: a(10),b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         a(i) = acos(b(i)/20)
      enddo
      write(6,*) a
      end
      subroutine test_dacos()
      real(8),volatile :: a(10),b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         a(i) = acos(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_erf()
      real,volatile :: a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      real res(10)/0.5204999, 0.47548172, 0.42839235,
     +     0.37938204,0.32862678, 0.2763264, 0.2227026, 0.16799597,
     +     0.112462915, 5.637198E-02/
      real c(10)
      do i=1,10
         a(i) = erf(b(i)/20)
      enddo
      c = a
      call check(c,res)
      end
      subroutine test_derf()
      real(8),volatile :: a(10),b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         a(i) = erf(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_erfc()
      real,volatile :: a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      real*4 res(10)/0.47950011, 0.5245183, 0.57160764,
     +     0.620618, 0.67137324, 0.7236736, 0.7772974, 0.832004,
     +     0.88753706, 0.943628/
      real c(10)
      do i=1,10
         a(i) = erfc(b(i)/20)
      enddo
      c = a
      call check(c,res)
      end
      subroutine test_derfc()
      real(8),volatile :: a(10),b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         a(i) = erfc(b(i)/20)
      enddo
      write(6,*) a
      end

#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<10E-6).or.(abs(a-b)/abs(a)<10E-6))
      subroutine check(calc,res)
      real calc(10),res(10)
      logical ngcheck/.FALSE./
      do i=1,10
         if (IS_EQUAL(calc(i), res(i))) then
         else
            ngcheck = .TRUE.
         endif
      enddo
      if (ngcheck) write(6,*) calc
      end
