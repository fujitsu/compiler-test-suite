program main
  integer(4),parameter :: max_size=100
  integer :: o=-2
  integer :: k=0



         do j = 1, max_size

            if (j .eq. 0) then

 111           continue
               o = o+1
               if (o .eq. 0) then
                  k    = k+1
                  goto 111
               endif
            endif
 222     enddo


         print *,k
end program main
