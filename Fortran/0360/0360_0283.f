      call test_axxx1
      call test_acxc
      call test_axxx2
      call test_axxx3
      call test_axxx4
      end


      subroutine test_axxx1()
      complex*8 a(16),b(16)
      complex*16 c(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      data c/16*3/
      
      do i=1,16
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end

      subroutine test_acxc()
      complex*8 a(16),b(16)
      real*4 c(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      data c/16*3/
      
      do i=1,16
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end

      subroutine test_axxx2()
      complex*8 a(16),b(16)
      real*8 c(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      data c/16*3/
      
      do i=1,16
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end

      subroutine test_axxx3()
      complex*16 a(16),b(16)
      real*4 c(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      data c/16*3/
      
      do i=1,16
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end

      subroutine test_axxx4()
      complex*16 a(16),b(16)
      real*8 c(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      data c/16*3/
      
      do i=1,16
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end
