      real*8 a(16),b(16),rr(16)
      common /sbm_area/a,b

      rr(6) = 0
      call init
      rr = 0
      do i=1,16
         rr(6) = a(i) + b(i) + 2
      enddo

      if (rr(6) .eq. 36) then
         write(6,*) ' ok '
      else
         write(6,*) ' ng '
         write(6,*) 36 , rr(6)
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


