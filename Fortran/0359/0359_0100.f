      call c8
      call c16
      end

      subroutine c8
      complex * 8 c8s1(10),c8a1(10),c8a2(10),c8s2(10)
      real*4 aa
      do i=1,10
         c8a2(i) = cmplx(i,i+3)
         c8a1(i) = (1.,2.)
         aa = c8a1(i)
      enddo

      do i=1,10
        c8s1(i) = 2+real(c8a2(i))+imag(c8a2(i))+aa
        c8s2(i) = c8a1(i) +1
      enddo

      if (c8s1(1) .eq. (8.0,0.0)) then
         write(6,*) " ok "
      else
         write(6,*) " ng "
         write(6,*)  c8s1(1)
         write(6,*)  c8s2
      endif
      end

      subroutine c16
      complex * 16 c16s1(10),c16a1(10),c16a2(10),c16s2(10)
      real*8 aa
      do i=1,10
         c16a2(i) = cmplx(i,i+3)
         c16a1(i) = (1.,2.)
         aa = c16a1(i)
      enddo

      do i=1,10
        c16s1(i) = 2+dreal(c16a2(i))+dimag(c16a2(i))+aa
        c16s2(i) = c16a1(i) +1
      enddo

      if (c16s1(1) .eq. (8.0,0.0)) then
         write(6,*) " ok "
      else
         write(6,*) " ng "
         write(6,*)  c16s1(1)
         write(6,*)  c16s2
      endif
      end


