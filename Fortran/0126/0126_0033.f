
      real*8 a(16),b(16),c(16),d(16)
      common /sbm_area/a,b,c,d

      call init
      do i=1,16
         a(2) = a(2) + b(i) * c(i) + d(i)
      enddo

      if (a(2) .eq. 32) then
         write(6,*) ' ok '
      else
         write(6,*) ' ng '
         write(6,*) 32 , a(2)
      endif
      end

      subroutine init
      real*8 a(16),b(16),c(16),d(16)
      common /sbm_area/a,b,c,d

      n = 1
      do i=1,16
         a(i) = 0
         b(i) = i*n
         n = n*(-1)
         c(i) = 2
         d(i) = 3
      enddo
      return
      end


