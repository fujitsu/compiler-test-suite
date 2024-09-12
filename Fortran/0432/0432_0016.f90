call test01()
print *,'pass'
end

module mod
integer ::ii
type ty1
 integer :: a(1000) =(/(i,i=1,1000)/)
 integer,pointer :: ip(:,:,:)=>null()
 integer,pointer :: ip1(:,:,:)=>null()
 integer :: b(1000) =(/(i+10,i=1,1000)/)
 integer,pointer :: ip2(:,:,:)=>null()
 integer :: c(1000) =(/(i+100,i=1,1000)/)
 integer,pointer :: ip3(:,:,:)=>null()
 integer ,private:: d(1000) =4
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
block
type(ty3) :: str3(1) 
if (stra(1)%s(1)%a(1000).ne.1000) print *,'err 1'
if (stra(1)%s(1)%b(1000).ne.1010) print *,'err 1'
if (stra(1)%s(1)%c(1000).ne.1100) print *,'err 1'
if (stra(1)%s(1)%e(1000).ne.2000) print *,'err 1'
if (stra(1)%s(1)%a(1).ne.1) print *,'err 1'
if (stra(1)%s(1)%b(1).ne.11) print *,'err 1'
if (stra(1)%s(1)%c(1).ne.101) print *,'err 1'
if (stra(1)%s(1)%e(1).ne.1001) print *,'err 1'
if (str3(1)%s(1)%a(1000).ne.1000) print *,'err 1'
if (str3(1)%s(1)%b(1000).ne.1010) print *,'err 1'
if (str3(1)%s(1)%c(1000).ne.1100) print *,'err 1'
if (str3(1)%s(1)%e(1000).ne.2000) print *,'err 1'
if (str3(1)%s(1)%a(1).ne.1) print *,'err 1'
if (str3(1)%s(1)%b(1).ne.11) print *,'err 1'
if (str3(1)%s(1)%c(1).ne.101) print *,'err 1'
if (str3(1)%s(1)%e(1).ne.1001) print *,'err 1'
end block
block
type(ty3) :: str3(1)
if (stra(1)%s(1)%a(1000).ne.1000) print *,'err 1'
if (stra(1)%s(1)%b(1000).ne.1010) print *,'err 1'
if (stra(1)%s(1)%c(1000).ne.1100) print *,'err 1'
if (stra(1)%s(1)%e(1000).ne.2000) print *,'err 1'
if (stra(1)%s(1)%a(1).ne.1) print *,'err 1'
if (stra(1)%s(1)%b(1).ne.11) print *,'err 1'
if (stra(1)%s(1)%c(1).ne.101) print *,'err 1'
if (stra(1)%s(1)%e(1).ne.1001) print *,'err 1'
if (str3(1)%s(1)%a(1000).ne.1000) print *,'err 1'
if (str3(1)%s(1)%b(1000).ne.1010) print *,'err 1'
if (str3(1)%s(1)%c(1000).ne.1100) print *,'err 1'
if (str3(1)%s(1)%e(1000).ne.2000) print *,'err 1'
if (str3(1)%s(1)%a(1).ne.1) print *,'err 1'
if (str3(1)%s(1)%b(1).ne.11) print *,'err 1'
if (str3(1)%s(1)%c(1).ne.101) print *,'err 1'
if (str3(1)%s(1)%e(1).ne.1001) print *,'err 1'

end block
end
