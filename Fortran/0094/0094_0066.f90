type ty(k1,k2,l)
integer(8) ,kind :: k1,k2
integer(8) ,len :: l
real(8) :: arr(l-k1,l-k2)
end type
type(ty(k1=2,k2=3,l=:)),allocatable :: obj
real(8)::x(3,2)
allocate(ty(k2=3,k1=2,l=5)::obj)
obj%arr(1,1)=3.0
obj%arr(2,1)=4.0
obj%arr(3,1)=5.0
obj%arr(1,2)=3.5
obj%arr(2,2)=4.0
obj%arr(3,2)=5.0
x=BESSEL_Y1(obj%arr)
if(.not.(x(1,1)>0.31 .and. x(1,1)<0.34)) print*,101
if(.not.(x(2,1)>0.37 .and. x(2,1)<0.40)) print*,102
if(.not.(x(1,2)>0.40 .and. x(1,2)<0.44)) print*,103
if(.not.(x(2,2)>0.37 .and. x(2,2)<0.40)) print*,104
if(.not.(x(3,1)>0.12 .and. x(3,1)<0.16)) print*,105
if(.not.(x(3,2)>0.12 .and. x(3,2)<0.16)) print*,106
print*,"pass"
End
