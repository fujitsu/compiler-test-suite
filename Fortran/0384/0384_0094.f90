intrinsic :: sin ,cos
procedure(sin),pointer :: p
real :: cha
j=sin(1.0)
p=>sin
p=>cos

cha = p(1.0)
if (abs(cha-cos(1.0))>0.00001) print *,'fail'
print *,"pass"
end
!
subroutine test01()
intrinsic :: sin ,cos,mod
procedure(mod )         :: pmod
print *,mod(1,1)
print *,pmod(1,1)
end

function pmod(i1,i2)
integer :: pmod
pmod=1
end 
