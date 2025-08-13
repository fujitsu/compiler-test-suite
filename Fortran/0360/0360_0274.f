      call test_csqrt
      call test_cdsqrt
      call test_cexp
      call test_cdexp
      call test_clog
      call test_cdlog
      end

      subroutine test_csqrt()
      complex*8 a(16),b(16),res(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +     (-13,-4),(14,3),(-15,-2),(16,1)/
      data res/(2.7414612,2.9181518),(2.5624935,2.9268367),
     +     (2.3788464,2.9426026),(2.1910581,2.9666032),
     +     (2.,3.),(1.8069261,3.0438432),
     +     (3.0989155,-1.6134677),(3.1655643,-1.4215475),
     +     (3.243578,-1.233206),(3.332158,-1.0503703),
     +     (3.430012,-.87463253), (3.535534,-.70710676),
     +     (.54839336,-3.6470172),(3.7628328,.39863583),
     +     (.2576295,-3.8815427),(4.0019507,.12493907)/

      do i=1,16
         a(i) = csqrt(b(i))
      enddo
      call check(a,res)
      write(6,*)
 1    format(2("(",f25.14,",",f25.14,") "))
      end

      subroutine test_cdsqrt()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = cdsqrt(b(i))
      enddo
      write(6,1) a
      write(6,*)
 1    format(2("(",f25.14,",",f25.14,") "))
      end

      subroutine test_cexp()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = cexp(b(i))
      enddo
      write(6,1) a
      write(6,*)
 1    format(2("(",f25.14,",",f25.14,") "))
      end

      subroutine test_cdexp()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = cdexp(b(i))
      enddo
      write(6,1) a
      write(6,*)
 1    format(2("(",f25.14,",",f25.14,") "))
      end

      subroutine test_clog()
      complex*8 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = clog(b(i))
      enddo
      write(6,1) a
      write(6,*)
 1    format(2("(",f25.14,",",f25.14,") "))
      end

      subroutine test_cdlog()
      complex*16 a(16),b(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/

      do i=1,16
         a(i) = cdlog(b(i))
      enddo
      write(6,1) a
 1    format(2("(",f25.14,",",f25.14,") "))
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
