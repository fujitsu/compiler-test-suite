use mod
call sub()
print *,'pass'
end

module mod
type ty3
 integer :: brr(1)/1*1/
end type
type ty4
 type(ty3) :: s1(1)
end type
type ty1
 integer,private :: arr(10000)=1
end type
type ty2
 type(ty1) :: s1(100)
end type
integer :: a=1
contains
subroutine sub()
type ty5
 integer :: crr(10000)=1
end type
type ty6
 type(ty5) :: s1(100)
end type
type(ty6) :: s4(1)
integer :: b=1
call sub1()
contains
subroutine sub1()
type ty7
 integer :: drr(10000)=2
end type
type ty8
 type(ty7) :: s1(100)
end type
type(ty8) :: s7(1)
type(ty2) :: s1(10)
type(ty4) :: s5(1)
if (s4(1)%s1(1)%crr(1).ne.1) print *,'NG'
if (s1(1)%s1(1)%arr(1).ne.1) print *,'NG'
if (s5(1)%s1(1)%brr(1).ne.1) print *,'NG'
if (s7(1)%s1(1)%drr(1).ne.2) print *,'NG'
end subroutine
end subroutine
end
