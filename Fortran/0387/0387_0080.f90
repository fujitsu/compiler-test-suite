module mod1
 type ty1
  integer :: i1 = 2
 end type
 type ty2
  integer :: i2 = 4
 end type
end module

use mod1

implicit type(ty1) (o)
implicit type(ty1) (p)

external                     :: out_func1
procedure()                  :: out_func2
procedure(),pointer          :: pp
type (ty1)                   :: t1

procedure(type(ty1))         :: out_func3
procedure(type(ty1)),pointer :: ptt1p
procedure(type(ty2))         :: out_func4
procedure(type(ty2)),pointer :: ptt2p

pp => out_func1
t1 =  pp(1)

if (t1%i1.ne.1) print *,'error'

pp => out_func2
t1 =  pp()

if (t1%i1.ne.2) print *,'error'

pp => out_func3

t1 = pp(1, 2)

if (t1%i1.ne.3) print *,'error'

print *,'pass'

end

function out_func1(i) result(rst1)
 use mod1
 type(ty1) :: rst1
 integer   :: i
 rst1 = ty1(i)
end function

function out_func2() result(rst2)
 use mod1
 type(ty1) :: rst2
 rst2 = ty1()
end function

function out_func3(i, j) result(rst3)
 use mod1
 type(ty1) :: rst3
 rst3 = ty1(i + j)
end function

function out_func4() result(rst4)
 use mod1
 type(ty2) :: rst4
 rst4 = ty2()
end function
