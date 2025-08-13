      real*4 a(10),b(10)
      real*8 x(10),y(10)
      complex*8 ca(10),cb(10),res(10)
      complex*16 cx(10),cy(10)
      data b/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data y/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data cb/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data cy/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data res/(0.,0.),(4.1893366E-02,0.76479536),
     +     (8.3151184E-02,.7744312),(2.0070063E-02,0.9700127),
     +     (2.561534E-02,.97446805),(4.160427E-03,.9973164),
     +     (4.6122745E-03,0.99819463),(6.610876E-04,0.9998857),
     +     (6.7065213E-04,1.0000192),(8.842706E-05,1.0000207)/

      do i=1,10
         cb(i) = cmplx(real(cb(i)),i/2)
         cy(i) = cmplx(real(cy(i)),i/2)
      enddo

      do i=1,10
         a(i) = tan(b(i))
      enddo
      do i=1,10
         x(i) = tan(y(i))
      enddo
      do i=1,10
         ca(i) = tan(cb(i))
      enddo
      do i=1,10
         cx(i) = tan(cy(i))
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
