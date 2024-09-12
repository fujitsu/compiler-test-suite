type ty
integer,pointer::ptr
end type

type,extends(ty)::ty1
integer,pointer::ptr1
end type

type(ty1)::obj1

integer,target::trg=5555
integer,target::qq=111

data obj1 /ty1(ty(qq),trg)/
if (obj1%ptr /= 111) print *,101
if (obj1%ptr1 /= 5555) print *,102
print *,"Pass"
end
