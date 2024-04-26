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
      n=1
      
      do i=1,10
         a(i) = asinh(b(n)/20)
         n = n + 1
      enddo
      write(6,*) a
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
      n=1
      
      do i=1,10
         a(i) = atanh(b(n)/20)
         n = n + 1
      enddo
      write(6,*) a
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
