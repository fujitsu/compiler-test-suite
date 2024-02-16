type ty(k1,k2,l)
integer(8) ,kind :: k1,k2
integer(8) ,len :: l
real(8) :: arr(l-k1,l-k2)
end type
type(ty(k1=2,k2=3,l=:)),allocatable :: obj
real(8)::x(3,2)
allocate(ty(k2=3,k1=2,l=5)::obj)
obj%arr(1,1)=3.0        
obj%arr(2,1)=4.4
obj%arr(3,1)=3.8
obj%arr(1,2)=4.2
obj%arr(2,2)=3.6
obj%arr(3,2)=2.7
x=LOG_GAMMA(obj%arr)
if(.not.(x(1,1)>0.68 .and. x(1,1)<0.70)) print*,101,x
if(.not.(x(2,1)>2.30 .and. x(2,1)<2.32)) print*,102
if(.not.(x(3,1)>1.53 .and. x(3,1)<1.55)) print*,103,x(1,2)
if(.not.(x(1,2)>2.03 .and. x(1,2)<2.05)) print*,104,x(2,2)
if(.not.(x(2,2)>1.30 .and. x(2,2)<1.32)) print*,105,x(3,1)
if(.not.(x(3,2)>0.42 .and. x(3,2)<0.44)) print*,106
print*,"pass"
End
