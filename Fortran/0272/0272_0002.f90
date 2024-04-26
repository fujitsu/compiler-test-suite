complex(2) :: cmp=(8,9)

integer(1) :: i1=10
integer(2) :: i2=20
integer(4) :: i4=30
integer(8) :: i8=40

real(2) :: r2=1.0
real(4) :: r4=2.0
real(8) :: r8=3.0

complex(4) :: c4=(2,3)
complex(8) :: c8=(4,5)
complex(16) :: c16=(6,7)

if(i1*cmp .ne.((8,9)*10))print*,"101"
if(cmp*i2 .ne.(20*(8,9)))print*,"102"
if(i4*cmp .ne.((8,9)*30))print*,"103"
if(cmp*i8 .ne.(40*(8,9)))print*,"104"

if(r2*cmp .ne.((8,9)*1.0))print*,"105"
if(cmp*r4 .ne.(2.0*(8,9)))print*,"106"
if(r8*cmp .ne.((8,9)*3))print*,"107"

if(cmp*cmp .ne.((8,9)*(8,9)))print*,"108"
if(c4*cmp .ne.((8,9)*(2,3)))print*,"109"
if(cmp*c8 .ne.((4,5)*(8,9)))print*,"110"

print*,"pass"
end


