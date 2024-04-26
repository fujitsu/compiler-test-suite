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
      
      do i=1,9
         a(i) = asin(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_dasin()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = asin(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_acos()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = acos(b(i)/20)
      enddo
      write(6,*) a
      end
      subroutine test_dacos()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = acos(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_erf()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = erf(b(i)/20)
      enddo
      write(6,*) a
      end
      subroutine test_derf()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = erf(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_erfc()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = erfc(b(i)/20)
      enddo
      write(6,*) a
      end
      subroutine test_derfc()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = erfc(b(i)/20)
      enddo
      write(6,*) a
      end

