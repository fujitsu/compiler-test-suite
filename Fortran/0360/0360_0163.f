      complex*16 a(10)/10*0/
      complex*8 x(10)
      real*8 b(10)/1,2,3,4,5,6,7,8,9,10/
      real*4 c(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         a(i) = dcmplx(b(i),b(i))
      enddo
      write(6,*) a

      do i=1,10
         x(i) = cmplx(c(i),c(i))
      enddo
      write(6,*) x
      end
