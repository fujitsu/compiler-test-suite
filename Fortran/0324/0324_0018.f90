call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
print *,'pass'
end

module mod01
integer ,allocatable :: a(:)
equivalence (kk,ii)
data ii/1/
end 
subroutine test01()
use mod01
end

module mod02
integer ,allocatable :: a(:)
integer :: i/1/
equivalence (kk,ii)
data ii/1/
end 
subroutine test02()
use mod02
end

module mod03
integer ,allocatable :: a(:)
integer :: i/1/
integer :: j
equivalence (kk,ii)
data ii/1/
end 
subroutine test03()
use mod03
end

module mod04
integer ,allocatable :: a(:)
integer :: j
equivalence (kk,ii)
data ii/1/
end 
subroutine test04()
use mod04
end


module mod05
integer ,allocatable :: a(:)
type ty1
integer :: i =1
end type
type(ty1) :: str
save str
integer :: j
equivalence (kk,ii)
data ii/1/
end 
subroutine test05()
use mod05
end

module mod06
integer ,allocatable :: a(:)
type ty1
integer :: i =1
end type
type(ty1) :: str
equivalence (kk,ii)
data ii/1/
save str
end 
subroutine test06()
use mod06
end

