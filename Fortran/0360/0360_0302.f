      call test_dsincos
      call test_sincos
      call test_dsincos_mod
      call test_sincos_mod
      call test_dsincos_mask
      call test_sincos_mask
      end
      
      subroutine test_dsincos()
      real*8 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         a(i) = sin(b(i)) + cos(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_sincos()
      real*4 a(10),b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         a(i) = sin(b(i)) + cos(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_dsincos_mod()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,9
         a(i) = sin(b(i)) + cos(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_sincos_mod()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,9
         a(i) = sin(b(i)) + cos(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_dsincos_mask()
      real*8 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         if (i .gt.3) then
            a(i) = sin(b(i)) + cos(b(i))
         endif
      enddo
      write(6,*) a
      end

      subroutine test_sincos_mask()
      real*4 a(10)/10*0/,b(10)/10,9,8,7,6,5,4,3,2,1/

      do i=1,10
         if (i .gt.3) then
            a(i) = sin(b(i)) + cos(b(i))
         endif
      enddo
      write(6,*) a
      end

