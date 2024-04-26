module defstruct
  type struct_1
   integer(kind=4),dimension(64) :: a
  end type struct_1
  type struct_2
   integer(kind=4),dimension(64) :: res
  endtype struct_2
end module


program main
  use defstruct
  integer(kind=4),dimension(64) :: b
  type(struct_1) :: st1
  type(struct_2) :: st2

  call init(st1,st2,b)
  do i=1,2
     call test(st1,st2,b)
  enddo

  dist = 1
  do i=1,64
     if(i .eq. dist) then 
       if(i .gt. 64/2) then
          if(i+1_4 .ne. st2%res(i)) then
     	     print *, "NG"
          endif
       else 
          if(0_4 .ne. st2%res(i)) then
	     print *, "NG"
          endif
       endif
       dist = dist + 5    
     else      
       if(0_4 .ne. st2%res(i)) then
         print *, "NG"
       endif
     endif
  enddo

  print *, "OK"
end program main

subroutine init(st1,st2,b)
  use defstruct
  integer(kind=4),dimension(64) :: b
  type(struct_1) :: st1
  type(struct_2) :: st2


  do i=1,64
     st1%a(i) = i+1_4
     st2%res(i) = 0_4
     if(i .gt. 64/2) then
          b(i) = 1
     else
	  b(i) = 0
     endif
  enddo
end subroutine init


subroutine test(st1,st2,b)
  use defstruct
  type(struct_1) :: st1
  type(struct_2) :: st2
  integer(kind=4),dimension(64) :: b

  do i=1,64,5
     if(b(i) .eq. 1) then
       st2%res(i) = st1%a(i)
     endif
  enddo
end subroutine test
