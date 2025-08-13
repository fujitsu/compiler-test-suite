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
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      real*4 res(10)/0.5235988, 0.4667653, 0.41151685, 0.3575711,
     + 0.30469266, 0.25268024, 0.20135793, 0, 0, 0/
      do i=1,7
         a(i) = asin(b(i)/20)
      enddo
      call check(a,res)
      end

      subroutine test_dasin()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,3
         a(i) = asin(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_acos()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,7
         a(i) = acos(b(i)/20)
      enddo
      write(6,*) a
      end
      subroutine test_dacos()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,3
         a(i) = acos(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_erf()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      real*4 res(10)/0.5204999, 0.47548172, 0.42839235, 0.37938204,
     + 0.32862678, 0.2763264, 0.2227026, 0, 0, 0/
      do i=1,7
         a(i) = erf(b(i)/20)
      enddo
      call check(a,res)
      end
      subroutine test_derf()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,3
         a(i) = erf(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_erfc()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      real*4 res(10)/0.47950011, 0.5245183, 0.57160764, 0.620618,
     + 0.67137324, 0.7236736, 0.7772974, 0, 0, 0/
      do i=1,7
         a(i) = erfc(b(i)/20)
      enddo
      call check(a,res)
      end
      subroutine test_derfc()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,3
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
