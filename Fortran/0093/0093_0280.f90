program pro
type ty
  complex ::c
end type ty
type(ty) :: obj
type(ty) :: o1
real ::x1
real ::sfun1
sfun1(obj)=obj%c%im+obj%c%re

o1%c=(2.0,5.0)
x1=sfun1(o1)
if(x1.ne.7.0) print*,101,x1
print*,"pass"
end

