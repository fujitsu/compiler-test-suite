interface
 function func0() result(rst)
  integer :: rst
 end function
 function func1(i) result(rst)
  integer :: i
  integer :: rst
 end function
 function func2(i, j) result(rst)
  integer :: i, j
  integer :: rst
 end function
 function func3(i, j, k) result(rst)
  integer :: i, j, k
  integer :: rst
 end function
end interface

type ty0
 procedure(integer),pointer,nopass :: t0pip => null()
 integer                           :: t0i = 0
end type

type, extends(ty0) ::  ty1
 procedure(integer),pointer,nopass :: t1pip => null()
 integer                           :: t1i = 1
end type

type, extends(ty1) :: ty2
 procedure(integer),pointer,nopass :: t2pip => null()
 integer                           :: t2i = 2
end type

type, extends(ty2) :: ty3
 procedure(integer),pointer,nopass :: t3pip => null()
 integer                           :: t3i = 3
end type

type (ty3) :: tt3

tt3 = ty3(t3pip = func3, t2pip = func2, t1pip = func1, t0pip = func0)

if (tt3%t0pip(       ).ne.func0(       )) print *,'func0 pointer error'

if (tt3%t1pip(1      ).ne.func1(1      )) print *,'func1 pointer error'

if (tt3%t2pip(2, 3   ).ne.func2(2, 3   )) print *,'func2 pointer error'

if (tt3%t3pip(3, 4, 5).ne.func3(3, 4, 5)) print *,'func3 pointer error'

tt3 = ty3(t3pip = func0, t2pip = func1, t1pip = func2, t0pip = func3)

if (tt3%t3pip(       ).ne.func0(       )) print *,'func0 pointer error'

if (tt3%t2pip(1      ).ne.func1(1      )) print *,'func1 pointer error'

if (tt3%t1pip(2, 3   ).ne.func2(2, 3   )) print *,'func2 pointer error'

if (tt3%t0pip(3, 4, 5).ne.func3(3, 4, 5)) print *,'func3 pointer error'

print *,'pass'

end

function func0() result(rst)
 integer :: rst
 rst = 1
end function

function func1(i) result(rst)
 integer :: i
 integer :: rst
 rst = i
end function

function func2(i, j) result(rst)
 integer :: i, j
 integer :: rst
 rst = i + j
end function

function func3(i, j, k) result(rst)
 integer :: i, j, k
 integer :: rst
 rst = i * j * k
end function
