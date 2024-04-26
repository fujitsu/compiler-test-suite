      call test_cacos
      call test_cdacos
      call test_cacosh
      call test_cdacosh
      call test_casin
      call test_cdasin
      call test_casinh
      call test_cdasinh
      end

      subroutine test_cacos()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = acos(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cdacos()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = acos(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cacosh()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = acosh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cdacosh()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = acosh(b(i))
      enddo
      write(6,*) a
      end



      subroutine test_casin()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = asin(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cdasin()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = asin(b(i))
      enddo
      write(6,*) a
      end


      subroutine test_casinh()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = asinh(b(i))
      enddo
      write(6,*) a
      end

      subroutine test_cdasinh()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = asinh(b(i))
      enddo
      write(6,*) a
      end
