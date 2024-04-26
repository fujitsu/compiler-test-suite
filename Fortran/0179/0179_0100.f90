module mod
type ty1
   character(2,4),dimension(2) :: x1
   character(2,4),dimension(2) :: x2
   character(2,4),dimension(2) :: x3
end type
type(ty1) ::s
    data  s%x1/ 4_"12",4_"34" /
    data  s%x2,s%x3/ 4_"12",4_"34" , 4_"12",4_"34"/
contains
subroutine s1
if (s%x1(1)/=4_"12") print *,101
if (s%x2(1)/=4_"12") print *,102
if (s%x3(1)/=4_"12") print *,103
if (s%x1(2)/=4_"34") print *,111
if (s%x2(2)/=4_"34") print *,112
if (s%x3(2)/=4_"34") print *,113
end subroutine
end

use mod
call s1
print *,'pass'
end
