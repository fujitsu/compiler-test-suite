program main
  real(kind=8),dimension(64) :: a,res
  integer(kind=4),dimension(64) :: b
  call init(a,b,res)
  do i=1,2
     call test(a,b,res)
  enddo

  dist = 1
  do i=1,64
     if(i .eq. dist) then 
       if(i .gt. 64/2) then
          if(i+1._8 .ne. res(i)) then
     	     print *, "NG"
          endif
       else 
          if(0._8 .ne. res(i)) then
	     print *, "NG"
          endif
       endif
       dist = dist + 2    
     else      
       if(0._8 .ne. res(i)) then
         print *, "NG"
       endif
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,res)
  real(kind=8),dimension(64) :: a,res
  integer(kind=4),dimension(64) :: b

  do i=1,64
     a(i) = i+1._8
     res(i) = 0._8
     if(i .gt. 64/2) then
          b(i) = 1
     else
	  b(i) = 0
     endif
  enddo
end subroutine init


subroutine test(a,b,res)
  real(kind=8),dimension(64) :: a,res
  integer(kind=4),dimension(64) :: b

  do i=1,64,2
     if(b(i) .eq. 1) then
       res(i) = a(i)
     endif
  enddo
end subroutine test
