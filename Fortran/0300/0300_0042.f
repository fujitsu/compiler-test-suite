      integer, dimension(10,10) :: i402, i403
      logical, dimension(10,10) :: l401
      logical :: l402 = .true.

      do i = 1,10
        do j = 1,10
          l401(i,j) = .true.
          i402(i,j) = 1
          i403(i,j) = i
        enddo
      enddo

      do i = 1,10
         where (l401(i,:).or.l402)
           i402(i,:) = ((real(i403(i,:)))**2)
         end where
      end do
      write (6, *) i402
      end
