program pro
type ty
  complex ::c
end type ty
type(ty) :: obj
real ::x1
real ::sfun1
sfun1(obj)=obj%c%im
x1=sfun1(ty((2.0,5.0)))
if(x1.ne.5.0) print*,101
print*,"pass"
end

