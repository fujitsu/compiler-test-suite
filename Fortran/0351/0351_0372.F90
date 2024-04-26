program main
  integer(kind=8),dimension(64) :: a,b,res
  call init(a,b,res)
  do i=1,2
     call test(a,b,res)
  enddo

  dist = 1
  do i=1,64
     if(i .eq. dist) then 
       if(i .gt. 64/2) then
          if(i+1_8 .ne. res(i)) then
     	     print *, "NG"
          endif
       else 
          if(0_8 .ne. res(i)) then
	     print *, "NG"
          endif
       endif
       dist = dist + 4    
     else      
       if(0_8 .ne. res(i)) then
         print *, "NG"
       endif
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,res)
  integer(kind=8),dimension(64) :: a,b,res

  do i=1,64
     a(i) = i+1_8
     res(i) = 0_8
     if(i .gt. 64/2) then
          b(i) = 1
     else
	  b(i) = 0
     endif
  enddo
end subroutine init


subroutine test(a,b,res)
  integer(kind=8),dimension(64) :: a,b,res

  do i=1,64,4
     if(b(i) .eq. 1) then
       res(i) = a(i)
     endif
  enddo
end subroutine test
