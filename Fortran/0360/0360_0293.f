      call test_asinh
      call test_acosh
      call test_atanh

      call test_dasinh
      call test_dacosh
      call test_datanh

      call test_qasinh
      call test_qacosh
      call test_qatanh
      end
      
      subroutine test_asinh
      real*4 a(16)/16*0/,b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = asinh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_acosh
      real*4 a(16)/16*0/,b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = acosh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_atanh
      real*4 a(16)/16*0/,b(16)
      data b/-0.6,-0.5,-0.4,-0.3,-0.2,-0.1,0.99,0.9,0.8, 
     +             0.7,0.6,0.5,0.4,0.3,0.2,1/
      do i=1,15
         a(i) = atanh(b(i))
      enddo
      write(6,*) a
      end


      subroutine test_dasinh
      real*8 a(16)/16*0/,b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = asinh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_dacosh
      real*8 a(16)/16*0/,b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = acosh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_datanh
      real*8 a(16)/16*0/,b(16)
      data b/-0.6,-0.5,-0.4,-0.3,-0.2,-0.1,0.99,0.9,0.8, 
     +             0.7,0.6,0.5,0.4,0.3,0.2,1/
      do i=1,15
         a(i) = atanh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_qasinh
      real*16 a(16)/16*0/,b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = asinh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_qacosh
      real*16 a(16)/16*0/,b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = acosh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_qatanh
      real*16 a(16)/16*0/,b(16)
      data b/-0.6,-0.5,-0.4,-0.3,-0.2,-0.1,0.99,0.9,0.8, 
     +             0.7,0.6,0.5,0.4,0.3,0.2,1/
      do i=1,15
         a(i) = atanh(b(i))
      enddo
      write(6,*) a
      end



