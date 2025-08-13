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
      write(6,1) a
      write(6,*)
 1    format(2("(",f25.14,",",f25.14,") "))
      end

      subroutine test_acxc()
      complex*8 a(16),b(16),res(16)
      real*4 c(16)
      data b/(-1,16),(-2,15),(-3,14),(-4,13),(-5,12),(-6,11),
     +       (7,-10),(8,-9),(9,-8),(10,-7),(11,-6),(12,-5),
     +       (-13,-4),(14,3),(-15,-2),(16,1)/
      data c/16*3/
      data res/(766.9997,-4048.),(1342.0002,-3195.0007),
     +     (1737.,-2366.001),(1964.0006,-1573.0002),
     +     (2034.9996,-828.0009),(1962.,-142.99991),
     +     (-1756.9999,-469.9999),(-1431.9996,-998.99945),
     +     (-998.9998,-1431.9995),(-469.99997,-1756.9999),
     +     (142.99992,-1962.),(827.99993,-2035.),
     +     (-1572.9995,-1964.0013),(2366.0005,1737.0005),
     +     (-3195.001,-1342.),(4048.,767.)/

      do i=1,16
         a(i) = b(i) ** c(i)
      enddo
      call check(a,res)
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
      write(6,1) a
      write(6,*)
 1    format(2("(",f25.14,",",f25.14,") "))
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
      write(6,1) a
      write(6,*)
 1    format(2("(",f25.14,",",f25.14,") "))
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
      write(6,1) a
      write(6,*)
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
