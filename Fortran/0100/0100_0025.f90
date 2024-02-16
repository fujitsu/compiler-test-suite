type ty
real(2) :: r2(3) = 1.0
real(4) :: r4(1:3) = 2.0
real(8) :: r8(3) = 3.0

integer(1) :: i1(3) = 4
integer(2) :: i2(3) = 5
integer(4) :: i4(3) = 6
integer(8) :: i8(3) = 7

complex(2) :: c2(3) = (2,3)     
complex(4) :: c4(3) = (4,5)     
complex(8) :: c8(3) = (6,7)     
end type

type(ty) :: obj
if(obj%r2(1)+obj%r4(2) .ne. 3)print*,"101"
if(obj%r4(2)-obj%r2(2) .ne. 1)print*,"102"
if(obj%r4(3)*obj%r2(3) .ne. 2)print*,"103"

if(obj%i1(2)-obj%r2(2) .ne. 3)print*,"104"
if(obj%r2(1)-obj%i2(1) .ne. -4)print*,"105" 
if(obj%r2(3)+obj%i4(3) .ne. 7)print*,"106"
if(obj%r2(1)*obj%i8(3) .ne. 7)print*,"107"

if(obj%r2(2)*obj%c2(3) .ne. (1*(2,3)))print*,"108"
if(obj%c4(1)+obj%r2(1) .ne. (5,5))print*,"109"
if(obj%r2(2)-obj%c8(2) .ne. (1-(6,7)))print*,"110"
print*,"pass"
end
