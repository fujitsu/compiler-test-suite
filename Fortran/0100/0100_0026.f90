real(2) :: res
real(2) :: res_dsb(5)

real(2) :: r2 = 1.0
real(2) :: r2_ar(4) = 4
real(16) :: r16(5) = 10.0

integer(1) :: i1 = 5
integer(1) :: i4(5) = 2

complex(2) :: c2 = (2,3)     
complex(2) :: c2_ar(5) = (10,10)     

res=r2**r2
if(res .ne. ((1.0)**(1.0)))print*,"101"

res_dsb(2)=r2_ar(3)**r16(1)
if(res_dsb(2) .ne. (4**(10)))print*,"102"

res=i1**r2
if(res .ne. (5**(1.0)))print*,"103"

res_dsb(3)=r2_ar(1)**i4(1)
if(res_dsb(3) .ne. (4**2))print*,"104"

res_dsb(4)=c2_ar(2)**r2_ar(2)
if(res_dsb(4) .ne. ((10,10)**(4)))print*,"105"

res=r2**c2
if(res .ne. ((1.0)**(2,3)))print*,"106"
print*,"pass"
end
