program main
  integer(8),dimension(100) :: t
  integer :: i
  integer(4),parameter :: max_size=100
  integer*8 x, y, y1,collisions
  integer o
  collisions = 0
  i=0
  o=3
  x=2
  t=0
  y=1

         do j = i + 1, max_size

            if (t(y) .eq. 0) then
               t(y) = x
            else
               collisions = collisions + 1
 111           continue
               o = o-1
               if (o .eq. -2) exit
               if (o .eq. 0) then
                  do k = 1, 100
                     y1 = k
                  enddo
                  k    = k+1
                  goto 111
               else
                  y = y+1
                  goto 111
               endif
            endif
 222     enddo


  print *,y1,k,o,sum(t),collisions
end program main
