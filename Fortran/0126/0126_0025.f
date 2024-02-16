
      call not_sbmarea1
      call not_sbmarea2
      write(6,*) ' ok '
      end

      subroutine not_sbmarea1
      real*8 a(16)
      do i=1,16
         a(i) = 0
      enddo
      call dummy(a)
      end

      subroutine not_sbmarea2
      real*8 a(16),b(16)
      common /sbm_area/a
      do i=1,16
         b(i) = i
      enddo
      do i=1,16
         a(i) = b(i)
      enddo
      call dummy(a)
      end

      subroutine dummy(aa)
      real*8 aa(16)
      aa(1) = aa(1)
      return
      end
