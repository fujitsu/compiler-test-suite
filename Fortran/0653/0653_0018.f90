call test01()
call test02()
call test03()
print *,'pass'
end

module mod01
contains
function ifun() result(ia)
integer,allocatable:: ia(:) ,ib(:)
allocate(ia(10))
ia=1
return
entry ifun1() result(ib)
allocate(ib(10))
ib=(/1,2,3,4,5,6,7,8,9,10/)
end function
subroutine sub(ifun,ifun1)
interface
function ifun() result(ia)
integer,allocatable:: ia(:)
end function
function ifun1() result(ia)
integer,allocatable:: ia(:)
end function
end interface
type ty1
 integer,allocatable:: ia(:)
end type
type(ty1) :: str
str=ty1(ifun())
if (all(str%ia.ne.1) ) print *,'fail'
str=ty1(ifun1())
if (all(str%ia.ne.(/1,2,3,4,5,6,7,8,9,10/)) ) print *,'fail'
end subroutine
end
subroutine test01()
use mod01
call sub(ifun,ifun1)
end

module mod02
contains
function ifun() result(ia)
integer,allocatable:: ia(:) ,ib(:)
allocate(ia(10))
ia=1
return
entry ifun1() result(ib)
allocate(ib(10))
ib=(/1,2,3,4,5,6,7,8,9,10/)
end function
subroutine sub()
type ty1
 integer,allocatable:: ia(:)
end type
type(ty1) :: str
str=ty1(ifun())
if (all(str%ia.ne.1) ) print *,'fail'
str=ty1(ifun1())
if (all(str%ia.ne.(/1,2,3,4,5,6,7,8,9,10/)) ) print *,'fail'
end subroutine
end
subroutine test02()
use mod02
call sub()
end

module mod03
contains
subroutine sub()
type ty1
 integer,allocatable:: ia(:)
end type
type(ty1) :: str
str=ty1(ifun())
if (all(str%ia.ne.1) ) print *,'fail'
str=ty1(ifun1())
if (all(str%ia.ne.(/1,2,3,4,5,6,7,8,9,10/)) ) print *,'fail'
end subroutine
function ifun() result(ia)
integer,allocatable:: ia(:) ,ib(:)
allocate(ia(10))
ia=1
return
entry ifun1() result(ib)
allocate(ib(10))
ib=(/1,2,3,4,5,6,7,8,9,10/)
end function
end
subroutine test03()
use mod03
call sub()
end

