call test01()
print *,'pass'
end

module mod01
type ty1
integer ,allocatable :: a(:)
end type
type(ty1) :: str
integer :: pp
parameter (pp=10)
end 

subroutine test01()
use mod01
allocate(str%a(10)) 
end

module mod02
integer ,pointer :: a(:)
integer :: pp
parameter (pp=10)
integer,dimension(pp,pp,pp,pp,pp,pp) :: ar1,ar2,ar3,ar4,ar5,ar6
end
subroutine test02()
use mod02
end

module mod03
integer ,save    :: a(1)
integer :: pp
parameter (pp=10)
integer,dimension(pp,pp,pp,pp,pp,pp) :: ar1,ar2,ar3,ar4,ar5,ar6
end
subroutine test03()
use mod03
end

module mod04
integer ,allocatable :: a(:)
private a
integer :: pp
parameter (pp=10)
integer,dimension(pp,pp,pp,pp,pp,pp) :: ar1,ar2,ar3,ar4,ar5,ar6
end
subroutine test04()
use mod04
end

module mod05
integer ,allocatable :: a(:)
integer :: pp
parameter (pp=10)
integer,dimension(pp,pp,pp,pp,pp,pp) :: ar1,ar2,ar3,ar4,ar5,ar6
private :: ar1,ar2,ar3,ar4,ar5,ar6
end
subroutine test05()
use mod05
end

module mod06
integer ,allocatable :: a(:)
private a
integer :: pp
parameter (pp=10)
integer,dimension(pp,pp,pp,pp,pp,pp) :: ar1,ar2,ar3,ar4,ar5,ar6
private :: ar1,ar2,ar3,ar4,ar5,ar6
end
subroutine test06()
use mod06
end
