
      call not_sbmarea1
      call not_sbmarea2
      write(6,*) ' ok '
      end

      subroutine not_sbmarea1
      real*8 a(16),b(16)
      common /sbm_area_xx/a,b
      call init
      do i=1,16
         a(i) = b(i)
      enddo
      call dummy(a)
      end

      subroutine not_sbmarea2
      real*8 aa(16)
      real*4 bb(16)
      common /sbm_area/aa,bb
      call init
      do i=1,16
         aa(i) = bb(i)
      enddo
      call dummy(aa)
      end

      subroutine dummy(aa)
      real*8 aa(16)
      aa = aa
      return
      end

      subroutine init
      real*8 a(16),aa(16),b(16)
      real*4 bb(16)
      common /sbm_area_xx/a,b
      common /sbm_area/aa,bb

      do i=1,16
         b(i) = i
         bb(i) = i
      enddo
      return
      end
