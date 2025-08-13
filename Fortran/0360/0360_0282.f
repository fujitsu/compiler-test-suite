      call test_acxc
      call test_axxx
      call test_acxi
      call test_acxj
      call test_axxi
      call test_axxj
      end

      subroutine test_acxc()
      complex*8 a(16),b(16),c(16),res(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      data c/16*(2.,3.)/
      data res/(1.0722256,-1.5860183),(0.73620194,-1.1698254),
     +     (0.51324176,-0.8320317),(0.3682914,-0.5701208),
     +     (0.27380684,-0.37518),(0.21005788,-0.23515777),
     +     (2034.9978,-1705.0531),(1595.7395,-885.04876),
     +     (1235.6832,-343.80768),(930.87365,1.1937437),
     +     (670.3639,209.19816),(448.91748,321.89835),
     +     (-508025.28,786430.2),(-57.132965,92.61984),
     +     (-1.0155251E+06,1.6136695E+06),(-119.35786,176.55194)/

      do i=1,16
         a(i) = b(i) ** c(i)
      enddo
      call check(a,res)
      end

      subroutine test_axxx()
      complex*16 a(16),b(16),c(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      data c/16*(2.,3.)/

      do i=1,16
         a(i) = b(i) ** c(i)
      enddo
      write(6,1) a
 1    format(2("(",f25.14,",",f25.14,") "))
      end

      subroutine test_acxi()
      complex*8 a(16),b(16)
      integer*4 c(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      data c/16*3/

      do i=1,16
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end

      subroutine test_acxj()
      complex*8 a(16),b(16)
      integer*8 c(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      data c/16*3/

      do i=1,16
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end


      subroutine test_axxi()
      complex*16 a(16),b(16)
      integer*4 c(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      data c/16*3/

      do i=1,16
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end

      subroutine test_axxj()
      complex*16 a(16),b(16)
      integer*8 c(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      data c/16*3/

      do i=1,16
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      end

#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<10E-6).or.(abs(a-b)/abs(a)<10E-6))
      subroutine check(calc,res)
      complex*8 calc(16),res(16)
      real*4 re1,im1,re2,im2
      logical ngcheck/.FALSE./
      do i=1,16
         re1 = real(calc(i))
         im1 = imag(calc(i))
         re2 = real(res(i))
         im2 = imag(res(i))
         if (IS_EQUAL(re1, re2)) then
         else
            ngcheck = .TRUE.
         endif
         if (IS_EQUAL(im1, im2)) then
         else
            ngcheck = .TRUE.
         endif
      enddo
      if (ngcheck) write(6,*) calc
      end
