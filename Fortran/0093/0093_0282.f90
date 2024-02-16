program pro
type ty
  complex ::c(2)
end type ty
type(ty) :: obj
type(ty) :: o1(2)
real ::x1
real ::sfun1
sfun1(obj)=obj%c(2)%im+obj%c(1)%re

o1(1)%c(1)=(4.0,2.0)
o1(1)%c(2)=(9.0,8.0)
o1(2)%c(1)=(1.0,7.0)
o1(2)%c(2)=(2.0,5.0)
x1=sfun1(o1(2))
if(x1.ne.6.0) print*,101,x1
print*,"pass"
end

