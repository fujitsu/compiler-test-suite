type ty
real(2) :: r4=3
real(2) :: r5=4
end type 
type(ty) :: obj
real(2) :: r2_1(2)
real(2) :: r2_2(2)
real(2) :: r3
r2_1=5
r2_2=5
r3=6
if((r2_1(1) .eq. r2_2(2)))print*,"pass"
if((r2_1(1) == r2_2(2)))print*,"pass"

if(r2_1(1) .ne. r3)print*,"pass"
if(any(r2_1 /= r3))print*,"pass"

if(obj%r4 .lt. r3)print*,"pass"
if(obj%r4 < r3)print*,"pass"

if((r2_1(2)+1) .le. r3)print*,"pass"
if((r2_1(2)+1) <= r3)print*,"pass"

if( obj%r5 .gt. obj%r4)print*,"pass"
if( obj%r5 > obj%r4)print*,"pass"

if( (obj%r5+1) .ge. r2_1(1))print*,"pass"
if( (obj%r5+1) >= r2_1(1))print*,"pass"

end
