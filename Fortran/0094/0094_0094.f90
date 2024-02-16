type ty(k1,k2,l)
integer(8) ,kind :: k1,k2
integer(8) ,len :: l
integer(k1)::n=2
real(8) :: arr(l-k1,l-k2)
end type
type(ty(k1=2,k2=3,l=:)),allocatable :: obj
    real(8)::x(3,2)
allocate(ty(k2=3,k1=2,l=5)::obj)
obj%arr(1,1)=1.4
obj%arr(2,1)=1.1
obj%arr(3,1)=2.2
obj%arr(1,2)=2.1
obj%arr(2,2)=1.2
obj%arr(3,2)=2.0
x=BESSEL_YN(obj%n,obj%arr)
if(.not.(x(1,1)<-1.01 .and. x(1,1)>-1.03)) print*,101
if(.not.(x(2,1)<-1.42 .and. x(2,1)>-1.44)) print*,102
if(.not.(x(1,2)<-0.55 .and. x(1,2)>-0.57)) print*,103
if(.not.(x(2,2)<-1.25 .and. x(2,2)>-1.27)) print*,104
if(.not.(x(3,1)<-0.50 .and. x(3,1)>-0.52)) print*,105
if(.not.(x(3,2)<-0.60 .and. x(3,2)>-0.62)) print*,106
print*,"pass"
End
