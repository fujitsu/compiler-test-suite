      call i4
      call i8
      call r4
      call r8
      call c8
      call c16
      end

      subroutine i4
      integer*4 a(10)
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)/10*3/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      write(6,*)
      end
      subroutine i8
      integer*8 a(10)
      integer*8 b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)/10*3/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      write(6,*)
      end
      subroutine r4
      real*4 a(10)
      real*4 b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)/10*3/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      write(6,*)
      end
      subroutine r8
      real*8 a(10)
      real*8 b(10)/1,2,3,4,5,6,7,8,9,10/,c(10)/10*3/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      write(6,*) a
      write(6,*)
      end
      subroutine c8
      complex*8 a(10),res(10)
      complex*8 b(10)/(1.,2.),(3.,4.),(5.,6.),(7.,8.),(9.,10.),
     +    (11.,12.),(13.,14.),(15.,16.),(17.,18.),(19.,20.)/
      complex*8 c(10)/10*(3.,4.)/
      data res/(0.12900956,3.392413E-02),
     +     (-2.9979908,0.62378585),(-2.0792465,-14.174338),
     +     (33.78946,-20.982198),(80.2578,28.80319),
     +     (73.89749,138.15725),(-33.65752,257.6787),
     +     (-248.04622,314.7002),(-531.95105,243.54385),
     +     (-818.76776,4.581451)/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      call check(a,res)
      write(6,*)
      end

      subroutine c16
      complex*16 a(10)
      complex*16 b(10)/(1.,2.),(3.,4.),(5.,6.),(7.,8.),(9.,10.),
     +    (11.,12.),(13.,14.),(15.,16.),(17.,18.),(19.,20.)/
      complex*16 c(10)/10*(3.,4.)/
      do i=1,10
         a(i) = b(i) ** c(i)
      enddo
      write(6,1) a
 1    format(2("(",f25.14,",",f25.14,") "))
      end

#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<10E-6).or.(abs(a-b)/abs(a)<10E-6))
      subroutine check(calc,res)
      complex*8 calc(10),res(10)
      real*4 re1,im1,re2,im2
      logical ngcheck/.FALSE./
      do i=1,10
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
