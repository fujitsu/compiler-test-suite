call test01()
print *,'pass'
end

module mod
integer ::ii
type ty1
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
end block
block
type(ty3) :: strs(3)
end block
block
type(ty3) :: strs(3)
end block
block
type(ty3) :: strs(3)
end block
block
type(ty3) :: strs(3)
end block

end block
end
