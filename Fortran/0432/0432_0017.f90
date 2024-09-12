call test01()
print *,'pass'
end

module mod
integer ::ii
type ty0
integer :: aaa(1000) =(/(i,i=1,1000)/)  +1
end type 
type,extends(ty0):: ty1
 integer :: a(1000) =(/(i,i=1,1000)/)
 integer :: b(1000) =(/(i+10,i=1,1000)/)
 integer :: c(1000) =(/(i+100,i=1,1000)/)
 integer :: e(1000) =(/(i+1000,i=1,1000)/)
end type
type ty2
 type(ty1) :: s(1) 
end type
type(ty2) :: str(1) 
end
subroutine test01()
use mod,stra=>str
save 
type ty3
 type(ty1) :: s(1) 
end type
type(ty3) :: str3(1) 
if (stra(1)%s(1)%a(1).ne.1) print *,'err 1'
if (stra(1)%s(1)%aaa(1).ne.2) print *,'err 1'
if (str3(1)%s(1)%a(1).ne.1) print *,'err 1'
if (str3(1)%s(1)%aaa(1).ne.2) print *,'err 1'
end
