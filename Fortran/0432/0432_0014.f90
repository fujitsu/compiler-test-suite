call test01()
print *,'pass'
end

module mod
integer ::ii
type ty0
 integer :: z01(1000) =(/(1,i=1,1000)/)
 character*1000 :: a01='a'
 integer :: z02(1000) =(/(2,i=1,1000)/)
 character*21 :: a02='a'
 integer :: z03(1000) =(/(3,i=1,1000)/)
  character*1:: a03='a'
 integer :: z04(1000) =(/(4,i=1,1000)/)
  character*65000:: a04='a'
 integer :: z05(1000) =(/(5,i=1,1000)/)
  character*3:: a05='a'
 integer :: z06(1000) =(/(6,i=1,1000)/)
 character*5 :: a06='a'
end type
type ty1
 integer :: a(1000) =(/(i,i=1,1000)/)
 type(ty0) :: sss(10)
 integer,pointer :: ip=>null()
 integer :: b(1000) =(/(i+10,i=1,1000)/)
 integer :: c(1000) =(/(i+100,i=1,1000)/)
 integer ,private:: d(100) =4
 integer :: e(1000) =(/(i+1000,i=1,1000)/)
end type
type ty2
 type(ty1) :: s(4) 
end type
type(ty2) :: str(3) 
end
subroutine test01()
use mod,stra=>str
type ty3
 type(ty1) :: s(4) 
end type
type(ty3) :: str3(3) 
if (stra(3)%s(4)%sss(10)%z01(5).ne.1) print *,'err 1'
if (stra(3)%s(4)%sss(10)%z02(5).ne.2) print *,'err 1'
if (stra(3)%s(4)%sss(10)%z03(5).ne.3) print *,'err 1'
if (stra(3)%s(4)%sss(10)%z04(5).ne.4) print *,'err 1'
if (stra(3)%s(4)%sss(10)%z05(5).ne.5) print *,'err 1'
if (stra(3)%s(4)%sss(10)%z06(5).ne.6) print *,'err 1'
if (stra(3)%s(4)%a(1000).ne.1000) print *,'err 1'
if (stra(3)%s(4)%b(1000).ne.1010) print *,'err 1'
if (stra(3)%s(4)%c(1000).ne.1100) print *,'err 1'
if (stra(3)%s(4)%e(1000).ne.2000) print *,'err 1'
if (stra(3)%s(4)%a(1).ne.1) print *,'err 1'
if (stra(3)%s(4)%b(1).ne.11) print *,'err 1'
if (stra(3)%s(4)%c(1).ne.101) print *,'err 1'
if (stra(3)%s(4)%e(1).ne.1001) print *,'err 1'
if (str3(3)%s(4)%a(1000).ne.1000) print *,'err 1'
if (str3(3)%s(4)%b(1000).ne.1010) print *,'err 1'
if (str3(3)%s(4)%c(1000).ne.1100) print *,'err 1'
if (str3(3)%s(4)%e(1000).ne.2000) print *,'err 1'
if (str3(3)%s(4)%a(1).ne.1) print *,'err 1'
if (str3(3)%s(4)%b(1).ne.11) print *,'err 1'
if (str3(3)%s(4)%c(1).ne.101) print *,'err 1'
if (str3(3)%s(4)%e(1).ne.1001) print *,'err 1'
end
