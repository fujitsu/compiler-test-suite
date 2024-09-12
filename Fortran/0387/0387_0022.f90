module mod1
 type ty1
  procedure(ifunc),nopass,pointer :: i4
 end type
 type ty2
  procedure(rfunc),nopass, pointer    :: r4
 end type
 contains
  function ifunc() result(rst)
   integer :: rst
   rst=1
  end function
  function rfunc() result(rst)
   real :: rst
   rst=1.0
  end function
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

integer :: i

call sub_t1(p)
call sub_t1(p1)

p1=>func_t1
p2=>func_t2

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
 function func_t(p1,p2) result(rst)
  use mod1
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
  end interface
  procedure(func_t1),pointer :: p1
  procedure(func_t2),pointer :: p2
  integer :: rst
  type(ty1) :: t1
  type(ty2) :: t2
  t1=p1(t1)
  t2=p2(t2)
  t1%i4=>ifunc
  t2%r4=>rfunc
  rst = t1%i4() + int(t2%r4())
 end function
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
