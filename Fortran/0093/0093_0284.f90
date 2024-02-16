program pro
type ty
  complex ::c(2)
end type ty
complex ::cmp1
complex ::cmp2(2)
complex ::c1
complex ::c2
complex ::c3
type(ty) :: obj1
type(ty) :: obj2
type(ty) :: obj3
type(ty) :: o1(2)
type(ty) :: o2
real ::x1
real ::sfun1
sfun1(obj1,c1,c2,obj2,obj3,c3) = obj1%c(2)%im + obj2%c(1)%re + c3%im + c2%re + c1%im + obj3%c(2)%im
cmp1=(3.0,7.0)
cmp2(1)=(3.0,7.0)
cmp2(2)=(4.0,8.0)
o2%c(1)=(3.0,4.0)
o2%c(2)=(5.0,6.0)

o1(1)%c(1)=(4.0,2.0)
o1(1)%c(2)=(9.0,8.0)
o1(2)%c(1)=(1.0,7.0)
o1(2)%c(2)=(2.0,5.0)

x1=sfun1(o1(2),(3.0,2.0),cmp1, ty([(1.0,7.0),(2.0,5.0)]),o2,cmp2(2))
if(x1.ne.25.0) print*,101,x1
print*,"pass"
end

