module defstruct
  type struct_1
   integer(kind=4) :: a
   integer(kind=4) :: res
   integer(kind=4) :: c
   integer(kind=4) :: d
   integer(kind=4) :: e
   integer(kind=4) :: f
   integer(kind=4) :: g
  end type struct_1
end module


program main
  use defstruct
  integer(kind=4),dimension(64) :: b
  type(struct_1) :: st1(64)

  call init(st1,b)
  do i=1,2
     call test(st1,b)
  enddo

  dist = 1
  do i=1,64
     if(i .eq. dist) then 
       if(i .gt. 64/2) then
          if(i+1_4 .ne. st1(i)%res) then
     	     print *, "NG"
          endif
       else 
          if(0_4 .ne. st1(i)%res) then
	     print *, "NG"
          endif
       endif
       dist = dist + 1    
     else      
       if(0_4 .ne. st1(i)%res) then
         print *, "NG"
       endif
     endif
  enddo

  print *, "OK"
end program main

subroutine init(st1,b)
  use defstruct
  integer(kind=4),dimension(64) :: b
  type(struct_1) :: st1(64)


  do i=1,64
     st1(i)%a = i+1_4
     st1(i)%res = 0_4
     st1(i)%c = 0_4
     st1(i)%d = 0_4
     st1(i)%e = 0_4
     st1(i)%f = 0_4
     st1(i)%g = 0_4
     if(i .gt. 64/2) then
          b(i) = 1
     else
	  b(i) = 0
     endif
  enddo
end subroutine init


subroutine test(st1,b)
  use defstruct
  type(struct_1) :: st1(64)
  integer(kind=4),dimension(64) :: b


  do i=1,64,1
     if(b(i) .eq. 1) then
       st1(i)%res = st1(i)%a
     endif
  enddo
end subroutine test
