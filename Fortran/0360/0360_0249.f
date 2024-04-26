      complex*8 c8a(16),c8b(16)
      complex*16 c16a(16),c16b(16)
      real*4  r4a,r4b
      real*8  r8a,r8b



      do i=1,16,4
         c8a(i) = cmplx(i,-i)
         c8a(i+1) = cmplx(i*2,-i*2)
         c8a(i+2) = cmplx(i-5,i+5)
         c8a(i+3) = cmplx(i+2,i)
         c8b(i) = cmplx(i,-i)+2
         c8b(i+1) = cmplx(i*2,-i*2)-2
         c8b(i+2) = cmplx(i-5,i+5)+10
         c8b(i+3) = cmplx(i+2,i)-10
         c16a(i) = cmplx(i,-i)
         c16a(i+1) = cmplx(i*2,-i*2)
         c16a(i+2) = cmplx(i-5,i+5)
         c16a(i+3) = cmplx(i+2,i)
         c16b(i) = cmplx(i,-i)+2
         c16b(i+1) = cmplx(i*2,-i*2)-2
         c16b(i+2) = cmplx(i-5,i+5)+10
         c16b(i+3) = cmplx(i+2,i)-10
      enddo

      write(6,*) " ## r4,c8 max/min ## "
      r4a = 0
      r4b = 0
      do i=1,16
         r4a = max(r4a,real(c8a(i)),imag(c8a(i)))
         r4b = min(r4b,imag(c8b(i)),real(c8b(i)))
      enddo
      if (r4a.ne.26)  write(6,*) "test1 ",r4a
      if (r4b.ne.-26)  write(6,*) "test2 ",r4b

      write(6,*) " ## r8,c16 max/min ## "
      r8a = 0
      r8b = 0
      do i=1,16
         r8a = max(r8a,real(c16a(i)),imag(c16a(i)))
         r8b = min(r8b,imag(c16b(i)),real(c16b(i)))
      enddo
      if (r8a.ne.26)  write(6,*) "test3 ",r8a
      if (r8b.ne.-26)  write(6,*) "test4 ",r8b
      end

