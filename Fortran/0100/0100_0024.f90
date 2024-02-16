real(2) :: res
real(2) :: res_dsb(5)

real(2) :: r2 = 1.0
real(2) :: r2_ar(4) = 4
real(8) :: r8(5) = 10.0

integer(2) :: i2 = 5
integer(8) :: i8(5) = 2

complex(2) :: c2 = (2,3)     
complex(2) :: c2_ar(5) = (10,10)     
complex(8) :: c8(5) = (1,1)     

res=r2/r2
if(res .ne. (1.0/1.0))print*,"101"

res_dsb(2)=r2_ar(3)/r8(1)
if(abs(res_dsb(2) - (4/10.0))>0.05)print*,"102"

res=i2/r2
if(res .ne. (5/(1.0)))print*,"103"

res_dsb(3)=r2_ar(1)/i8(1)
if(res_dsb(3) .ne. (4/2))print*,"104"

res_dsb(4)=c2_ar(2)/r2_ar(2)
if(res_dsb(4) .ne. (real((10,10)/(4.0))))print*,"105"

res=r2/c2
if(abs(res -    real(1.0/(2.0,3.0)))>0.05)print*,"106"
print*,"pass"
end
