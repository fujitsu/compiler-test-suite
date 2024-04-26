      call c8
      call c16
      end

      subroutine c8
      complex * 8 c8s1(10),c8a1(10),c8a2(10),c8s2(10)
      do i=1,10
         c8a2(i) = cmplx(i,i+3)
         c8a1(i) = (1.,2.)
      enddo

      do i=1,10
        c8s1(i) = imag(c8a2(i))+real(c8a2(i))
        c8s2(i) = c8a1(i) +1
      enddo

      write(6,*)  c8s1
      write(6,*)  c8s2
      end

      subroutine c16
      complex * 16 c16s1(10),c16a1(10),c16a2(10),c16s2(10)
      do i=1,10
         c16a2(i) = cmplx(i,i+3)
         c16a1(i) = (1.,2.)
      enddo

      do i=1,10
        c16s1(i) = dimag(c16a2(i))+dreal(c16a2(i))
        c16s2(i) = c16a1(i) +1
      enddo

      write(6,*)  c16s1
      write(6,*)  c16s2
      end
