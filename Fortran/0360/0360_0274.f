      call test_csqrt
      call test_cdsqrt
      call test_cexp
      call test_cdexp
      call test_clog
      call test_cdlog
      end

      subroutine test_csqrt()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = csqrt(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cdsqrt()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = cdsqrt(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cexp()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = cexp(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cdexp()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = cdexp(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_clog()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = clog(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cdlog()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = cdlog(b(i))
      enddo
      write(6,*) a
      end
