      call complex_atan
      call complex_sinh
      call complex_cosh
      call complex_tanh
      call complex_asin
      call complex_acos
      call complex_tan
      call complex_acosh
      call complex_asinh
      call complex_atanh
      end

      subroutine complex_atan()
      complex*8 a(16),b(16)
      data a/16*0/
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      do i=1,15
         a(i) = atan(b(i))
      enddo
      write(6,*) a
      end

      subroutine complex_sinh()
      complex*8 a(16),b(16)
      data a/16*0/
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      do i=1,15
         a(i) = sinh(b(i))
      enddo
      write(6,*) a
      end

      subroutine complex_cosh()
      complex*8 a(16),b(16)
      data a/16*0/
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      do i=1,15
         a(i) = cosh(b(i))
      enddo
      write(6,*) a
      end

      subroutine complex_tanh()
      complex*8 a(16),b(16)
      data a/16*0/
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      do i=1,15
         a(i) = tanh(b(i))
      enddo
      write(6,*) a
      end

      subroutine complex_asin()
      complex*8 a(16),b(16)
      data a/16*0/
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      do i=1,15
         a(i) = asin(b(i))
      enddo
      write(6,*) a
      end

      subroutine complex_acos()
      complex*8 a(16),b(16)
      data a/16*0/
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      do i=1,15
         a(i) = acos(b(i))
      enddo
      write(6,*) a
      end

      subroutine complex_tan()
      complex*8 a(16),b(16)
      data a/16*0/
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      do i=1,15
         a(i) = tan(b(i))
      enddo
      write(6,*) a
      end

      subroutine complex_acosh()
      complex*8 a(16),b(16)
      data a/16*0/
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,15
         a(i) = acosh(b(i))
      enddo
      write(6,*) a
      end

      subroutine complex_asinh()
      complex*8 a(16),b(16)
      data a/16*0/
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      do i=1,15
         a(i) = asinh(b(i))
      enddo
      write(6,*) a
      end

      subroutine complex_atanh()
      complex*8 a(16),b(16)
      data a/16*0/
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      do i=1,15
         a(i) = atanh(b(i))
      enddo
      write(6,*) a
      end
