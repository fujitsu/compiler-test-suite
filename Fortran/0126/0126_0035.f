      real*8 a(16),b(16),rr,qq(16)
      common /sbm_area/a,b

      qq(2) = 0.0
      call init
      rr = 0
      do i=1,16
         rr = rr + b(i)
         qq(2) = qq(2) - b(i)
      enddo

      if (rr .eq. -8 .and. qq(2).eq.8) then
         write(6,*) ' ok '
      else
         write(6,*) ' ng '
         write(6,*) -8 , rr
         write(6,*) 8 , qq(2)
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


