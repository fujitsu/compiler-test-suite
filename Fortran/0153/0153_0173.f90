type ty(L1)
integer,kind:: L1
integer:: ii(L1)
end type
type(ty(2)) :: obj1(2)= [ty(2)(4),ty(2)(8)]
if (any(obj1(1)%ii/=4)) print *,101
if (any(obj1(2)%ii/=8)) print *,102
print *,'pass'
end
