      call test_csin
      call test_cdsin
      call test_csinh
      call test_cdsinh
      end

      subroutine test_csin()
      complex*8 a(16),b(16),res(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +     (-13,-4),(14,3),(-15,-2),(16,1)/
      data res/(-3.7387022E+06,2.400593E+06),(-1.4862545E+06,-680195.7),
     +     (-84855.76,-595284.56),(167409.78,-144590.34),
     +     (78034.765,23083.691),(8364.881,28744.685),
     +     (7235.546,-8302.9),(4008.4265,589.4995),
     +     (614.254,1358.0204),(-298.29605,460.07648),
     +     (-201.71367,-.89272153),(-39.819053,-62.616672),
     +     (-11.474018,-24.764148),(9.973101,1.3698163),
     +     (-2.4465103,2.755282),(-.444258,-1.1254425)/

      do i=1,16
         a(i) = sin(b(i))
      enddo
      call check(a,res)
      write(6,*)
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
      write(6,*)
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
      write(6,*)
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
