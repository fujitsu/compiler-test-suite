use mod
call sub()
call sub1()
call sub2()
print *,'pass'
end
module mod
contains
subroutine sub()
type ty1
integer :: a(10) =1
integer,allocatable :: al
integer,pointer     :: po=>null()
logical(1) :: b(10) =.false.
real    :: c(10) =2.0
complex :: d(10) =(3.0,4.0)
character :: cha(10) ='aaaaaaaaaaaaa'
integer :: x(10) =10
end type
type ty2
type(ty1) :: aaa(10)
end type
type(ty2) :: str(10)
if (str(1)%aaa(1)%a(1).ne.1) print *,'err'
if (str(1)%aaa(1)%b(1).neqv..false.) print *,'err'
if (str(1)%aaa(1)%c(1).ne.2.0) print *,'err'
if (str(1)%aaa(1)%d(1).ne.(3.0,4.0)) print *,'err'
if (str(1)%aaa(1)%x(1).ne.10) print *,'err'
if (str(1)%aaa(1)%cha(1).ne.'a') print *,'err'
str(1)%aaa(1)%a(1)=2
end subroutine
subroutine sub1()
type ty1
integer :: a(10) =1
integer,allocatable :: al
integer,pointer     :: po=>null()
logical(1) :: b(10) =.false.
real    :: c(10) =2.0
complex :: d(10) =(3.0,4.0)
character :: cha(10) ='aaaaaaaaaaaaa'
integer :: x(10) =10
end type
type(ty1) :: str(10)
if (str(1)%a(1).ne.1) print *,'err'
if (str(1)%b(1).neqv..false.) print *,'err'
if (str(1)%c(1).ne.2.0) print *,'err'
if (str(1)%d(1).ne.(3.0,4.0)) print *,'err'
if (str(1)%x(1).ne.10) print *,'err'
if (str(1)%cha(1).ne.'a') print *,'err'
str(1)%a(1)=2
end subroutine
subroutine sub2()
type ty1
integer,allocatable :: al
integer,pointer     :: po=>null()
logical(1) :: b(10) =.false.
real    :: c(10) =2.0
complex :: d(10) =(3.0,4.0)
character :: cha(10) ='aaaaaaaaaaaaa'
integer :: x(10) =10
integer(1) :: a(10) =1
end type
type ty2
type(ty1) :: aaa(10)
end type
type(ty2) :: str(10)
if (str(1)%aaa(1)%a(2).ne.1) print *,'err'
if (str(1)%aaa(1)%b(2).neqv..false.) print *,'err'
if (str(1)%aaa(1)%c(2).ne.2.0) print *,'err'
if (str(1)%aaa(1)%d(2).ne.(3.0,4.0)) print *,'err'
if (str(1)%aaa(1)%x(2).ne.10) print *,'err'
if (str(1)%aaa(1)%cha(2).ne.'a') print *,'err'
str(1)%aaa(1)%a(2)=2
end subroutine
end
