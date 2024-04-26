      call c8
      call c16
      end

      subroutine c8
      complex * 8 c8s1(10),c8a1(10),c8a2(10),c8s2(10),c1(1),c2(1)
      do i=1,10
         c8a2(i) = cmplx(i,i+3)
         c8a1(i) = (1.,2.)
      enddo

      do i=1,10
        c1(1) = c8a2(i)
        c2(1) = c8a1(i) +1
      enddo

      if (c1(1).eq.(10.0,13.0).and.c2(1).eq.(2.0,2.0)) then
         write(6,*) " ok "
      else
         write(6,*) " ng "
         write(6,*)  c1
         write(6,*)  c2
      endif
      end

      subroutine c16
      complex * 16 c16s1(10),c16a1(10),c16a2(10),c16s2(10),c1(1),c2(1)
      do i=1,10
         c16a2(i) = cmplx(i,i+3)
         c16a1(i) = (1.,2.)
      enddo

      do i=1,10
        c1(1) = c16a2(i)
        c2(1) = c16a1(i) +1
      enddo

      if (c1(1).eq.(10.0,13.0).and.c2(1).eq.(2.0,2.0)) then
         write(6,*) " ok "
      else
         write(6,*) " ng "
         write(6,*)  c1
         write(6,*)  c2
      endif
      end
