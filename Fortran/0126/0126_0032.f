      real*8 a(16),b(16)
      common /sbm_area/a,b

      call init
      do i=1,16
         a(2) = a(2) + b(i)
      enddo

      if (a(2) .eq. -8) then
         write(6,*) ' ok '
      else
         write(6,*) ' ng '
         write(6,*) -8 , a(2)
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


