      real*8 a(16),b(16),rr
      common /sbm_area/a,b

      call init
      rr = 0
      do i=1,16
         rr = a(i) + b(i) + 2
      enddo

      if (rr .eq. 36) then
         write(6,*) ' ok '
      else
         write(6,*) ' ng '
         write(6,*) 36 , rr
      endif
      end

      subroutine init
      real*8 a(16),b(16)
      common /sbm_area/a,b

      do i=1,16
         a(i) = i+2
         b(i) = i
      enddo
      return
      end


