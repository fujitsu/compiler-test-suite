program main
  logical(kind=4),dimension(64) :: a,res
  integer(kind=4),dimension(64) :: b

  call init(a,b,res)
  do i=1,2
     call test(a,b,res)
  enddo

  dist = 1
  do i=1,64
     if(i .eq. dist) then 
       if(i .gt. 64/2) then
          if(.TRUE._4 .neqv. res(i)) then
     	     print *, "NG"
          endif
       else 
          if(.FALSE._4 .neqv. res(i)) then
	     print *, "NG"
          endif
       endif
       dist = dist + 2    
     else      
       if(.FALSE._4 .neqv. res(i)) then
         print *, "NG"
       endif
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,res)
  logical(kind=4),dimension(64) :: a,res
  integer(kind=4),dimension(64) :: b

  do i=1,64
     a(i) = .TRUE._4
     res(i) = .FALSE._4
     if(i .gt. 64/2) then
          b(i) = 1
     else
	  b(i) = 0
     endif
  enddo
end subroutine init


subroutine test(a,b,res)
  logical(kind=4),dimension(64) :: a,res
  integer(kind=4),dimension(64) :: b

  do i=1,64,2
     if(b(i) .eq. 1) then
       res(i) = a(i)
     endif
  enddo
end subroutine test
