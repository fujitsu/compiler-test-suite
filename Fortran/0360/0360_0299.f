      real*4 a(10),b(10)
      real*8 x(10),y(10)
      complex*8 ca(10),cb(10),res(10)
      complex*16 cx(10),cy(10)
      data b/0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0/
      data y/0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0/
      data cb/0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0/
      data cy/0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0/
      data res/(-2.3025851,0.),(1.9610358E-02,1.3734008),
     +    (4.308885E-02,1.2793395),(0.7127575,1.3734008),
     +     (0.7234595,1.3258177),(1.1182227,1.3734008),
     +     (1.1251193,1.3415644),(1.4059046,1.3734008),
     +     (1.4109869,1.3494819),(1.6290482,1.3734008)/

      do i=1,10
         cb(i) = cmplx(real(cb(i)),i/2)
         cy(i) = cmplx(real(cy(i)),i/2)
      enddo

      do i=1,10
         a(i) = log(b(i))
      enddo
      do i=1,10
         x(i) = log(y(i))
      enddo
      do i=1,10
         ca(i) = log(cb(i))
      enddo
      do i=1,10
         cx(i) = log(cy(i))
      enddo
      write(6,*) a
      write(6,*)
      write(6,*) x
      write(6,*)
      call check(ca,res)
      write(6,*)
      write(6,*) cx
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
