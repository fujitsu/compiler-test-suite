      real*8 a(16),b(16),rr
      common /sbm_area/a,b

      call init
      rr = 0
      do i=1,16
         rr = rr + b(i)
      enddo

      if (rr .eq. -8) then
         write(6,*) ' ok '
      else
         write(6,*) ' ng '
         write(6,*) -8 , rr
      endif
      end

      subroutine init
      real*8 a(16),b(16)
      common /sbm_area/a,b

      n = 1
      do i=1,16
         a(i) = 0
         b(i) = i*n
         n = n*(-1)
      enddo
      return
      end


