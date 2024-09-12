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
  integer ,private:: d(100) =4
 integer :: e(1000) =(/(i+1000,i=1,1000)/)
end type
type ty2
 type(ty1) :: s(4:4) 
end type
type(ty2) :: str(3:3) 
end
subroutine test01()
use mod,stra=>str
save
type ty3
 type(ty1) :: s(3:4) 
end type
block
save
type(ty3) :: str3(2:3) 
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
end block
end
