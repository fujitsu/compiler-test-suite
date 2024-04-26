call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

module mod
contains
pure function if()
if=10
end function
pure function if2()
if2=1
end function
subroutine sub(a)
integer a(if())
integer b(if())
integer c(if())
if (size(a).ne.10) print *,'err1'
if (size(b).ne.10) print *,'err1'
if (size(c).ne.10) print *,'err1'
if (ubound(a,1).ne.10) print *,'err1'
if (lbound(a,1).ne.1) print *,'err1'
if (ubound(b,1).ne.10) print *,'err1'
if (lbound(b,1).ne.1) print *,'err1'
if (ubound(c,1).ne.10) print *,'err1'
if (lbound(c,1).ne.1) print *,'err1'
end subroutine
end

subroutine test01()
use mod
integer arr(10)
arr=1
call sub(arr)
end

module mod2
contains
pure function if()
if=10
end function
pure function if2()
if2=1
end function
subroutine sub(a)
integer,dimension(if()) :: a,b,c
if (size(a).ne.10) print *,'err1'
if (size(b).ne.10) print *,'err1'
if (size(c).ne.10) print *,'err1'
if (ubound(a,1).ne.10) print *,'err1'
if (lbound(a,1).ne.1) print *,'err1'
if (ubound(b,1).ne.10) print *,'err1'
if (lbound(b,1).ne.1) print *,'err1'
if (ubound(c,1).ne.10) print *,'err1'
if (lbound(c,1).ne.1) print *,'err1'
end subroutine
end

subroutine test02()
use mod2
integer arr(10)
arr=1
call sub(arr)
end

module mod3
contains
pure function if()
if=10
end function
pure function if2()
if2=1
end function
subroutine sub(a)
integer(kind=4),dimension(if()) :: a,b,c
if (size(a).ne.10) print *,'err1'
if (size(b).ne.10) print *,'err1'
if (size(c).ne.10) print *,'err1'
if (ubound(a,1).ne.10) print *,'err1'
if (lbound(a,1).ne.1) print *,'err1'
if (ubound(b,1).ne.10) print *,'err1'
if (lbound(b,1).ne.1) print *,'err1'
if (ubound(c,1).ne.10) print *,'err1'
if (lbound(c,1).ne.1) print *,'err1'
end subroutine
end

subroutine test03()
use mod3
integer arr(10)
arr=1
call sub(arr)
end

module mod4
contains
pure function if()
if=10
end function
pure function if2()
if2=1
end function
subroutine sub(a)
integer,dimension(1,if()) :: a,b,c
if (size(a).ne.10) print *,'err1'
if (size(b).ne.10) print *,'err1'
if (size(c).ne.10) print *,'err1'
if (ubound(a,2).ne.10) print *,'err1'
if (lbound(a,2).ne.1) print *,'err1'
if (ubound(b,2).ne.10) print *,'err1'
if (lbound(b,2).ne.1) print *,'err1'
if (ubound(c,2).ne.10) print *,'err1'
if (lbound(c,2).ne.1) print *,'err1'
end subroutine
end

subroutine test04()
use mod4
integer arr(10)
arr=1
call sub(arr)
end

