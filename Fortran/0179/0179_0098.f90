module mod
contains
subroutine s1()
type ty1
   character(2,4),dimension(2) :: x1=(/4_"12",4_"34"/)
   character(2,4),dimension(2) :: x2=(/4_"12",4_"34"/)
   character(2,4),dimension(2) :: x3=(/4_"12",4_"34"/)
end type
type(ty1) ::s
end subroutine
end

use mod
call s1()
print *,'pass'
end
