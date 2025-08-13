      real*4 a(10),b(10)
      real*8 x(10),y(10)
      complex*8 ca(10),cb(10),res1(10)
      complex*16 cx(10),cy(10)
      data b/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data y/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data cb/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data cy/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data res1/(1.,-0.),(1.5353717,-0.11732435),
     +     (1.5123217,-0.23347643),(3.594163,-1.0718106),
     +     (3.4652118,-1.4123659),(8.835205,-4.802825),
     +     (8.3092,-5.6565175),(20.886488,-17.580648),
     +     (19.025827,-19.57659),(46.129646,-58.12537)/

      do i=1,10
         cb(i) = cmplx(real(cb(i)),i/2)
         cy(i) = cmplx(real(cy(i)),i/2)
      enddo

      do i=1,10
         a(i) = cos(b(i))
      enddo
      do i=1,10
         x(i) = cos(y(i))
      enddo
      do i=1,10
         ca(i) = cos(cb(i))
      enddo
      do i=1,10
         cx(i) = cos(cy(i))
      enddo
      write(6,*) a
      write(6,*) x
      write(6,*)
      call check(ca,res1)
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
