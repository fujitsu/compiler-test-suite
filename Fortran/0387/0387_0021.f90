module mod1
 type ty1
  integer :: i4
 end type
 type ty2
  real    :: r4
 end type
end module

interface
 function func_t1(t1) result(rst)
  use mod1
  type(ty1) :: t1
  type(ty1) :: rst
 end function
 function func_t2(t2) result(rst)
  use mod1
  type(ty2) :: t2
  type(ty2) :: rst
 end function
 function func(i) result(rst)
  use mod1
  type (ty1) :: i,rst
 end function
end interface

procedure(func),pointer    :: p
procedure(),pointer        :: p0
procedure(func_t1),pointer :: p1
procedure(func_t2),pointer :: p2

call sub_t1(p)
call sub_t1(p1)

print *,'pass'

contains
 subroutine sub_t1(p1)
  interface
   function func_t1(t1) result(rst)
    use mod1
    type(ty1) :: t1
    type(ty1) :: rst
   end function
  end interface
  procedure(func_t1),pointer :: p1
 end subroutine
 subroutine sub_t2(p1)
  interface
   function func_t2(t2) result(rst)
    use mod1
    type(ty2) :: t2
    type(ty2) :: rst
   end function
  end interface
  procedure(func_t2),pointer :: p1
 end subroutine
end

function func_t1(t1) result(rst)
 use mod1
 type(ty1) :: t1
 type(ty1) :: rst
 rst = t1
end function
function func_t2(t2) result(rst)
 use mod1
 type(ty2) :: t2
 type(ty2) :: rst
 rst = t2
end function
function func(i) result(rst)
 use mod1
 type (ty1) :: i,rst
 rst = i
end function
