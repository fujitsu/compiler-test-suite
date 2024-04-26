      call test_acosh
      call test_dacosh
      call test_asinh
      call test_dasinh
      call test_atanh
      call test_datanh
      end

      subroutine test_acosh()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,3
         a(i) = acosh(b(i))
      enddo
      write(6,*) a
      
      do i=1,7
         a(i) = acosh(b(i)+2)
      enddo
      write(6,*) a
      end
      subroutine test_dacosh()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,3
         a(i) = acosh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_asinh()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,3
         a(i) = asinh(b(i)/20)
      enddo
      write(6,*) a
      
      do i=1,7
         a(i) = asinh(b(i)/10)
      enddo
      write(6,*) a
      end

      subroutine test_dasinh()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,3
         a(i) = asinh(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_atanh()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,3
         a(i) = atanh(b(i)/20)
      enddo
      write(6,*) a
      
      do i=1,7
         a(i) = atanh(b(i)/11)
      enddo
      write(6,*) a
      end
      subroutine test_datanh()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,3
         a(i) = atanh(b(i)/20)
      enddo
      write(6,*) a
      end
