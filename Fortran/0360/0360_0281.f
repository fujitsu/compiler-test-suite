      call test_ctan
      call test_cdtan
      call test_ctanh
      call test_cdtanh
      end

      subroutine test_ctan()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = tan(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cdtan()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = tan(b(i))
      enddo
      write(6,*) a
      end


      subroutine test_ctanh()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = tanh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cdtanh()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = tanh(b(i))
      enddo
      write(6,*) a
      end

