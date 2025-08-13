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
      real(4),volatile :: a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         if (i.gt.3) then
            a(i) = asin(b(i)/20)
         endif
      enddo
      write(6,*) a
      end

      subroutine test_dasin()
      real(8),volatile :: a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         if (i.gt.3) then
            a(i) = asin(b(i)/20)
         endif
      enddo
      write(6,*) a
      end

      subroutine test_acos()
      real(4),volatile :: a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         if (i.gt.3) then
            a(i) = acos(b(i)/20)
         endif
      enddo
      write(6,*) a
      end
      subroutine test_dacos()
      real(8),volatile :: a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         if (i.gt.3) then
            a(i) = acos(b(i)/20)
         endif
      enddo
      write(6,*) a
      end

      subroutine test_erf()
      real(4),volatile :: a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         if (i.gt.3) then
            a(i) = erf(b(i)/20)
         endif
      enddo
      write(6,*) a
      end
      subroutine test_derf()
      real(8),volatile :: a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         if (i.gt.3) then
            a(i) = erf(b(i)/20)
         endif
      enddo
      write(6,*) a
      end

      subroutine test_erfc()
      real(4),volatile :: a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         if (i.gt.3) then
            a(i) = erfc(b(i)/20)
         endif
      enddo
      write(6,*) a
      end
      subroutine test_derfc()
      real(8),volatile :: a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         if (i.gt.3) then
            a(i) = erfc(b(i)/20)
         endif
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
