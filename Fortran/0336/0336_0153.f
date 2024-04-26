       program main
       implicit none
       integer :: i,j,n
       do n=1,2
         if ( n > 1 ) then
           j = i
           i = i + 1
         else
           i = 0
           j = i
         end if
         print *, 'j =', j
       end do
       end program main
