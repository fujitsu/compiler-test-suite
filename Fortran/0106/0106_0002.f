      integer(kind=4),dimension(10,10) :: nmat
      do i=1,10
         do j=1,10
           if (mod(j,2).eq.0) then
             nmat(i,j) = j
           else
             nmat(i,j) = j * (-1)
           endif
         enddo
      enddo

      call sub1(10,10,nmat)
      stop
      end

      subroutine sub1(nx,ny,nmat)
      implicit double precision (a-h,o-z)
      dimension nmat(nx,ny)
      data icon/1/

      goto 110
 100  continue
      do j = 1,nx
         do i = 1,ny
            if (nmat(i,j) .lt. 0) then
               nmat(i,j) = 0
            endif
         end do
      end do
 110  continue
      do j = 1,nx
         do i = 1,ny
            if (nmat(i,j) .gt. 0) then
               nmat(i,j) = 0
               icon = 0
               goto 200
            endif
         end do
      end do
      goto 900
 200  continue

      if (icon .eq. 0) then
         goto 110
      end if
      goto 100
 900  continue

      print*, "OK"

      return
      end
