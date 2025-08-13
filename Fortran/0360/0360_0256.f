      call test_acosh
      call test_dacosh
      call test_asinh
      call test_dasinh
      call test_atanh
      call test_datanh
      end

      subroutine test_acosh()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      n=1

      do i=1,10
         a(i) = acosh(b(n))
         n = n + 1
      enddo
      write(6,*) a
      end
      subroutine test_dacosh()
      real*8 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      n=1

      do i=1,10
         a(i) = acosh(b(n))
         n = n + 1
      enddo
      write(6,*) a
      end

      subroutine test_asinh()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      real*4 res(10)/0.48121184, 0.43604964, 0.39003533, 0.34322155,
     + 0.29567307, 0.24746647, 0.1986901, 0.14944312,
     + 0.09983408, 4.997919E-02/
      n=1

      do i=1,10
         a(i) = asinh(b(n)/20)
         n = n + 1
      enddo
      call check(a,res)
      end

      subroutine test_dasinh()
      real*8 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      n=1

      do i=1,10
         a(i) = asinh(b(n)/20)
         n = n + 1
      enddo
      write(6,*) a
      end

      subroutine test_atanh()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      real*4 res(10)/0.54930615, 0.48470026, 0.42364895, 0.36544377,
     +     0.30951962, 0.25541282, 0.20273255,
     +     0.15114043, 0.100335344, 5.0041727E-02/

      n=1
      do i=1,10
         a(i) = atanh(b(n)/20)
         n = n + 1
      enddo
      call check(a,res)
      end
      subroutine test_datanh()
      real*8 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/
      n=1

      do i=1,10
         a(i) = atanh(b(n)/20)
         n = n + 1
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
