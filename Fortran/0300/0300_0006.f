      write(6,*) ' ## OK ## '
      end

      subroutine e20000
      common //ninty,iferr,nliner
      do ly=1,ninty
         if (iferr.ne.0) return
         if (nliner.eq.0) then
            do j=1,4
               jj=2*j
               do i=1,jj
               end do
            end do
            do i=1,2
            end do
         end if
      end do
      return
      end
