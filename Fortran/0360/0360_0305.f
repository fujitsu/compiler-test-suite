      real*4 a(10),b(10)
      real*8 x(10),y(10)
      complex*8 ca(10),cb(10),res(10)
      complex*16 cx(10),cy(10)
      data b/1,2,3,4,5,6,7,8,9,10/
      data y/1,2,3,4,5,6,7,8,9,10/
      data cb/1,2,3,4,5,6,7,8,9,10/
      data cy/1,2,3,4,5,6,7,8,9,10/
      data res/(1.,0.),(1.4553467,0.34356076),
     +     (1.7553173,0.28484878),(2.058171,.48586828),
     +     (2.2787237,.43884215),(2.5207345,.59506464),
     +     (2.7033102,.55487525),(2.9106934,.6871215),
     +     (3.0699231,.6514821),(3.254254,.7682252)/

      do i=1,10
         cb(i) = cmplx(real(cb(i)),i/2)
         cy(i) = cmplx(real(cy(i)),i/2)
      enddo

      do i=1,10
         a(i) = sqrt(b(i))
      enddo
      do i=1,10
         x(i) = sqrt(y(i))
      enddo
      do i=1,10
         ca(i) = sqrt(cb(i))
      enddo
      do i=1,10
         cx(i) = sqrt(cy(i))
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
