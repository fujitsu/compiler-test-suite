interface
 function func0() result(rst)
  logical :: rst
 end function
 function func1(i) result(rst)
  logical :: i
  logical :: rst
 end function
 function func2(i, j) result(rst)
  logical :: i, j
  logical :: rst
 end function
 function func3(i, j, k) result(rst)
  logical :: i, j, k
  logical :: rst
 end function
end interface

type ty0
 procedure(logical),pointer,nopass :: t0pip => null()
 integer                           :: t0i = 0
end type

type, extends(ty0) ::  ty1
 procedure(logical),pointer,nopass :: t1pip => null()
 integer                           :: t1i = 1
end type

type, extends(ty1) :: ty2
 procedure(logical),pointer,nopass :: t2pip => null()
 integer                           :: t2i = 2
end type

type, extends(ty2) :: ty3
 procedure(logical),pointer,nopass :: t3pip => null()
 integer                           :: t3i = 3
end type

type (ty3) :: tt3

tt3 = ty3(t3pip = func3, t2pip = func2, t1pip = func1, t0pip = func0)

if (tt3%t0pip(       ).neqv.func0(       )) print *,'func0 pointer error'

if (tt3%t1pip(.true.      ).neqv.func1(.true.      )) print *,'func1 pointer error'

if (tt3%t2pip(.true., .true.   ).neqv.func2(.true., .true.   )) print *,'func2 pointer error'

if (tt3%t3pip(.true., .true., .true.).neqv.func3(.true., .true., .true.)) print *,'func3 pointer error'

tt3 = ty3(t3pip = func0, t2pip = func1, t1pip = func2, t0pip = func3)

if (tt3%t3pip(       ).neqv.func0(       )) print *,'func0 pointer error'

if (tt3%t2pip(.true.      ).neqv.func1(.true.      )) print *,'func1 pointer error'

if (tt3%t1pip(.true., .true.   ).neqv.func2(.true., .true.   )) print *,'func2 pointer error'

if (tt3%t0pip(.true., .true., .true.).neqv.func3(.true., .true., .true.)) print *,'func3 pointer error'

print *,'pass'

end

function func0() result(rst)
 logical :: rst
 rst = .true.
end function

function func1(i) result(rst)
 logical :: i
 logical :: rst
 rst = i
end function

function func2(i, j) result(rst)
 logical :: i, j
 logical :: rst
 rst = i
end function

function func3(i, j, k) result(rst)
 logical :: i, j, k
 logical :: rst
 rst = i
end function
