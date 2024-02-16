      real*8 a(16),b(16),rr,qq(16),c(16)
      common /sbm_area/a,b,c

      call init
      rr = 0
      do i=1,16
         rr = a(i) + b(i) + 2
         qq(3) = b(i) + c(i)
      enddo

      if (rr .eq. 36 .and. qq(3).eq.22) then
         write(6,*) ' ok '
      else
         write(6,*) ' ng '
         write(6,*) 36 , rr
         write(6,*) 22 , qq(3)
      endif
      end

      subroutine init
      real*8 a(16),b(16),c(16)
      common /sbm_area/a,b,c

      do i=1,16
         a(i) = i+2
         b(i) = i
         c(i) = 6
      enddo
      return
      end


