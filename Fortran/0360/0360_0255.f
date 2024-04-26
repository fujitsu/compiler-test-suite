      call test_acosh
      call test_dacosh
      call test_asinh
      call test_dasinh
      call test_atanh
      call test_datanh
      end

      subroutine test_acosh()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = acosh(b(i))
      enddo
      write(6,*) a
      end
      subroutine test_dacosh()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = acosh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_asinh()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = asinh(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_dasinh()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = asinh(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_atanh()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = atanh(b(i)/20)
      enddo
      write(6,*) a
      end
      subroutine test_datanh()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = atanh(b(i)/20)
      enddo
      write(6,*) a
      end
