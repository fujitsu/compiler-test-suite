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
type(ty2) :: str(3)
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
if (stra(1)%s(1)%b(1000).ne.1010) print *,'err 2'
if (stra(1)%s(1)%c(1000).ne.1100) print *,'err 3'
if (stra(1)%s(1)%e(1000).ne.2000) print *,'err 4'
if (stra(1)%s(1)%a(1).ne.1) print *,'err 5'
if (stra(1)%s(1)%b(1).ne.11) print *,'err 6'
if (stra(1)%s(1)%c(1).ne.101) print *,'err 7'
if (stra(1)%s(1)%e(1).ne.1001) print *,'err 8'
if (str3(1)%s(1)%a(1000).ne.1000) print *,'err 9'
if (str3(1)%s(1)%b(1000).ne.1010) print *,'err10'
if (str3(1)%s(1)%c(1000).ne.1100) print *,'err11'
if (str3(1)%s(1)%e(1000).ne.2000) print *,'err12'
if (str3(1)%s(1)%a(1).ne.1) print *,'err13'
if (str3(1)%s(1)%b(1).ne.11) print *,'err14'
if (str3(1)%s(1)%c(1).ne.101) print *,'err15'
if (str3(1)%s(1)%e(1).ne.1001) print *,'err16'
end block
block
type(ty3) :: str3(3)
block
type(ty3) :: strs(1)
if (strs(1)%s(1)%a(1000).ne.1000) print *,'err21'
if (strs(1)%s(1)%b(1000).ne.1010) print *,'err22'
if (strs(1)%s(1)%c(1000).ne.1100) print *,'err23'
block
type(ty3) :: stre(3)
if (stre(1)%s(1)%a(1000).ne.1000) print *,'err31'
if (stre(1)%s(1)%b(1000).ne.1010) print *,'err32'
if (stre(1)%s(1)%c(1000).ne.1100) print *,'err33'
end block
end block
block
type(ty3) :: strs(1)
if (strs(1)%s(1)%a(1000).ne.1000) print *,'err41'
if (strs(1)%s(1)%b(1000).ne.1010) print *,'err42'
if (strs(1)%s(1)%c(1000).ne.1100) print *,'err43'
end block
block
type(ty3) :: strs(3)
if (strs(3)%s(1)%a(1000).ne.1000) print *,'err51'
if (strs(3)%s(1)%b(1000).ne.1010) print *,'err52'
if (strs(3)%s(1)%c(1000).ne.1100) print *,'err53'
end block
block
type(ty3) :: strs(3)
if (strs(3)%s(1)%a(1000).ne.1000) print *,'err61'
if (strs(3)%s(1)%b(1000).ne.1010) print *,'err62'
if (strs(3)%s(1)%c(1000).ne.1100) print *,'err63'
end block
block
type(ty3) :: strs(3)
if (strs(3)%s(1)%a(1000).ne.1000) print *,'err71'
if (strs(3)%s(1)%b(1000).ne.1010) print *,'err72'
if (strs(3)%s(1)%c(1000).ne.1100) print *,'err73'
end block
block
type(ty3) :: strs(3)
if (strs(3)%s(1)%a(1000).ne.1000) print *,'err81'
if (strs(3)%s(1)%b(1000).ne.1010) print *,'err82'
if (strs(3)%s(1)%c(1000).ne.1100) print *,'err83'
end block
block
type(ty3) :: strs(3)
if (strs(3)%s(1)%a(1000).ne.1000) print *,'erra1'
if (strs(3)%s(1)%b(1000).ne.1010) print *,'erra2'
if (strs(3)%s(1)%c(1000).ne.1100) print *,'erra3'
end block
block
type(ty3) :: strs(3)
if (strs(3)%s(1)%a(1000).ne.1000) print *,'errb1'
if (strs(3)%s(1)%b(1000).ne.1010) print *,'errb2'
if (strs(3)%s(1)%c(1000).ne.1100) print *,'errb3'
end block
block
type(ty3) :: strs(3)
if (strs(3)%s(1)%a(1000).ne.1000) print *,'errc1'
if (strs(3)%s(1)%b(1000).ne.1010) print *,'errc2'
if (strs(3)%s(1)%c(1000).ne.1100) print *,'errc3'
end block
if (stra(3)%s(1)%a(1000).ne.1000) print *,'errx1'
if (stra(3)%s(1)%b(1000).ne.1010) print *,'errx2'
if (stra(3)%s(1)%c(1000).ne.1100) print *,'errx3'
if (stra(3)%s(1)%e(1000).ne.2000) print *,'errx4'
if (stra(3)%s(1)%a(1).ne.1) print *,'errx5'
if (stra(3)%s(1)%b(1).ne.11) print *,'errx6'
if (stra(3)%s(1)%c(1).ne.101) print *,'errx7'
if (stra(3)%s(1)%e(1).ne.1001) print *,'errz1'
if (str3(3)%s(1)%a(1000).ne.1000) print *,'errz2'
if (str3(3)%s(1)%b(1000).ne.1010) print *,'errz3'
if (str3(3)%s(1)%c(1000).ne.1100) print *,'errz4'
if (str3(3)%s(1)%e(1000).ne.2000) print *,'errz5'
if (str3(3)%s(1)%a(1).ne.1) print *,'errz6'
if (str3(3)%s(1)%b(1).ne.11) print *,'errz7'
if (str3(3)%s(1)%c(1).ne.101) print *,'errz8'
if (str3(3)%s(1)%e(1).ne.1001) print *,'errz9'

end block
end
