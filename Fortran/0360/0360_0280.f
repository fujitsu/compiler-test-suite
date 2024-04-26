      call test_csin
      call test_cdsin
      call test_csinh
      call test_cdsinh
      end

      subroutine test_csin()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = sin(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cdsin()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = sin(b(i))
      enddo
      write(6,*) a
      end



      subroutine test_csinh()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = sinh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cdsinh()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      
      do i=1,16
         a(i) = sinh(b(i))
      enddo
      write(6,*) a
      end

