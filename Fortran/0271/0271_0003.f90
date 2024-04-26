complex(2) :: cmp
complex(2) :: cmp_dsb(5)

real(2) :: r2 = 1.0
real(2) :: r2_ar(4) = 4
real(16) :: r16(5) = 10.0
real(16) :: r16x(5) = 3

integer(1) :: i1 = 5
integer(2) :: i4(5) = 2

complex(2) :: c2 = (2,3)     
complex(2) :: c2_ar(5) = (10.0,10.0)     
complex(2) :: c2_xr(5) = (3,3)
complex(16) :: c16(5) = (1,1)     

cmp=c2**r2
if(cmp .ne. ((2,3)**1))print*,"101"

cmp_dsb(2)=c2_xr(3)**r16x(1)

if(abs(cmp_dsb(2) - ((3,3)**3))>0.1)print*,"102", cmplx( cmp_dsb(2),kind=4),((3,3)**3)

cmp=i1**c2

if(abs(cmp -    (5**(2,3)))>0.1)print*,"103",cmplx(cmp,kind=4)-(5**(2,3))

cmp_dsb(3)=c2_ar(1)**i4(1)
if(cmp_dsb(3) .ne. ((10.0,10.0)**2))print*,"104"

cmp_dsb(4)=c2_ar(2)**c16(2)
if(abs(cmp_dsb(4) - ((10.0,10.0)**(1,1)))>0.1)print*,"105",cmplx(cmp_dsb(4) ,kind=4), (10.0,10.0)**(1,1)

cmp_dsb(1)=c2_ar(1)**r2_ar(2)
if(abs(cmp_dsb(1) - ((10.0,10.0)**4))>0.1)print*,"106"
print*,"Pass"
end
