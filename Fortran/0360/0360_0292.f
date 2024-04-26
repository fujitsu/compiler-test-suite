      call test_hypot
      call test_dhypot
      call test_qhypot
      call test_poppar14
      call test_poppar24
      call test_poppar44
      call test_poppar84
      call test_poppar18
      call test_poppar28
      call test_poppar48
      call test_poppar88
      call test_trailz88
      end
      
      subroutine test_hypot
      real*4 a(16)/16*0/,b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      real*4 c(16)/1,2,2,3,3,3,4,4,4,4,5,5,5,6,6,7/
      do i=1,15
         a(i) = hypot(b(i),c(i))
      enddo
      write(6,*) a
      end

      subroutine test_dhypot
      real*8 a(16)/16*0/,b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      real*8 c(16)/1,2,2,3,3,3,4,4,4,4,5,5,5,6,6,7/
      do i=1,15
         a(i) = hypot(b(i),c(i))
      enddo
      write(6,*) a
      end

      subroutine test_qhypot
      real*16 a(16)/16*0/,b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      real*16 c(16)/1,2,2,3,3,3,4,4,4,4,5,5,5,6,6,7/
      do i=1,15
         a(i) = hypot(b(i),c(i))
      enddo
      write(6,*) a
      end

      subroutine test_poppar14
      integer*4 a(16)/16*0/
      integer*1 b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = poppar(b(i))
      enddo
      write(6,*) a
      end
      subroutine test_poppar24
      integer*4 a(16)/16*0/
      integer*2 b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = poppar(b(i))
      enddo
      write(6,*) a
      end
      subroutine test_poppar44
      integer*4 a(16)/16*0/
      integer*4 b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = poppar(b(i))
      enddo
      write(6,*) a
      end
      subroutine test_poppar84
      integer*4 a(16)/16*0/
      integer*8 b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = poppar(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_poppar18
      integer*8 a(16)/16*0/
      integer*1 b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = poppar(b(i))
      enddo
      write(6,*) a
      end
      subroutine test_poppar28
      integer*8 a(16)/16*0/
      integer*2 b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = poppar(b(i))
      enddo
      write(6,*) a
      end
      subroutine test_poppar48
      integer*8 a(16)/16*0/
      integer*4 b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = poppar(b(i))
      enddo
      write(6,*) a
      end
      subroutine test_poppar88
      integer*8 a(16)/16*0/
      integer*8 b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = poppar(b(i))
      enddo
      write(6,*) a
      end
      subroutine test_trailz88
      integer*8 a(16)/16*0/
      integer*8 b(16)/16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1/
      do i=1,15
         a(i) = trailz(b(i))
      enddo
      write(6,*) a
      end
