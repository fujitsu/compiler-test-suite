      complex*8 c8a(16)
      complex*16 c16a(16)
      real*4  r4
      real*8  r8



      do i=1,16,4
         c8a(i) = cmplx(i,-i)
         c8a(i+1) = cmplx(i*2,-i*2)
         c8a(i+2) = cmplx(i-5,i+5)
         c8a(i+3) = cmplx(i+2,i)
         c16a(i) = cmplx(i,-i)
         c16a(i+1) = cmplx(i*2,-i*2)
         c16a(i+2) = cmplx(i-5,i+5)
         c16a(i+3) = cmplx(i+2,i)
      enddo

      write(6,*) " ## r4,c8 max/min ## "
      r4 = 0
      do i=1,16
         r4 = max(r4,real(c8a(i)))
      enddo
      if (r4.ne.26)  write(6,*) "test1 ",r4
      r4 = 0
      do i=1,16
         r4 = max(r4,imag(c8a(i)))
      enddo
      if (r4.ne.18) write(6,*) "test2 ",r4
      r4 = 100
      do i=1,16
         r4 = min(r4,real(c8a(i)))
      enddo
      if (r4.ne.-4) write(6,*) "test3 ",r4
      r4 = 100
      do i=1,16
         r4 = min(r4,imag(c8a(i)))
      enddo
      if (r4.ne.-26) write(6,*) "test4 ",r4

      write(6,*) " ## r8,c16 max/min ## "
      r8 = 0
      do i=1,16
         r8 = max(r8,dreal(c16a(i)))
      enddo
      if (r8.ne.26) write(6,*) "test5 ",r8
      r8 = 0
      do i=1,16
         r8 = max(r8,dimag(c16a(i)))
      enddo
      if (r8.ne.18) write(6,*) "test6 ",r8
      r8 = 100
      do i=1,16
         r8 = min(r8,dreal(c16a(i)))
      enddo
      if (r8.ne.-4) write(6,*) "test7 ",r8
      r8 = 100
      do i=1,16
         r8 = min(r8,dimag(c16a(i)))
      enddo
      if (r8.ne.-26) write(6,*) "test8 ",r8
      end

      
