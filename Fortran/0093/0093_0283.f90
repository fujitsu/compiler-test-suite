program pro
type ty
  complex ::c(2)
end type ty
type(ty) :: obj
real ::x1
real ::sfun1
sfun1(obj)=obj%c(2)%im+obj%c(1)%re

x1=sfun1(ty([(1.0,7.0),(2.0,5.0)]))
if(x1.ne.6.0) print*,101,x1
print*,"pass"
end

