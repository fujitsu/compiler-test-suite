type p1
real :: x=1,y=1
end type p1
type, extends(p1) :: p2_a
real :: z
end type p2_a
type, extends(p1) :: p2_b
integer :: c
end type p2_b
type(p1), target :: t_p1
type(p2_a), target :: t_p2_a
type(p2_b), target :: t_p2_b
class(p1), pointer :: p_p1
p_p1 => t_p2_b
select type (p_p1 )
class is ( p1 )
if (1.eq.2) print *, p_p1%x, p_p1%y
if(p_p1%x.ne.p_p1%y) print *,'err'
type is ( p2_a )
print *, p_p1%x, p_p1%y, p_p1%z
end select
print *,'pass'
end
