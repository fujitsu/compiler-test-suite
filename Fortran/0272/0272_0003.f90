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

if(-cmp .ne. -(8,9))print*,"100"

if(cmp-i1 .ne.((8,9)-10))print*,"101"
if(i2-cmp .ne.(20-(8,9)))print*,"102"
if(cmp-i4 .ne.((8,9)-30))print*,"103"
if(i8-cmp .ne.(40-(8,9)))print*,"104"

if(cmp-r2 .ne.((8,9)-1.0))print*,"105"
if(r4-cmp .ne.(2.0-(8,9)))print*,"106"
if(cmp-r8 .ne.((8,9)-3))print*,"107"

if(cmp-cmp .ne.((8,9)-(8,9)))print*,"109"
if(cmp-c4 .ne.((8,9)-(2,3)))print*,"110"
if(c8-cmp .ne.((4,5)-(8,9)))print*,"111"

print*,"pass"
end


