call test()
call test1()
print *,'pass'
end
module type_define_mod
type set
 integer iii
end type
end
subroutine test()
use type_define_mod
type(set) :: a,b,c
interface operator (.intersection.)
function set_intersection (a, b)
use type_define_mod
implicit none
type (set), intent(in) :: a, b
type (set) :: set_intersection
end function set_intersection
end interface operator (.intersection.)
b%iii = 2
c%iii= 3
a = b.intersection.c
if (a%iii.ne.5   )print *,'err'
end
subroutine test1()
use type_define_mod
type(set) :: a,b,c
interface operator (*)
function set_intersection (a, b)
use type_define_mod
implicit none
type (set), intent (in) :: a, b
type (set) :: set_intersection
end function set_intersection
end interface
b%iii = 3
c%iii= 5
a = b*c
if (a%iii.ne.8   )print *,'err'
end
function set_intersection (a,b)
use type_define_mod 
implicit none
type (set) , intent(in) :: a,b
type (set) :: set_intersection
set_intersection%iii = a%iii + b%iii
end function set_intersection
