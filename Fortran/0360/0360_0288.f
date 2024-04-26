      call test_cosh
      call test_dcosh
      call test_sinh
      call test_dsinh
      call test_tanh
      call test_dtanh
      end

      subroutine test_cosh()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = cosh(b(i)/20)
      enddo
      write(6,*) a
      end
      subroutine test_dcosh()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = cosh(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_sinh()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = sinh(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_dsinh()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = sinh(b(i)/20)
      enddo
      write(6,*) a
      end

      subroutine test_tanh()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = tanh(b(i)/20)
      enddo
      write(6,*) a
      end
      subroutine test_dtanh()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/
      
      do i=1,9
         a(i) = tanh(b(i)/20)
      enddo
      write(6,*) a
      end
