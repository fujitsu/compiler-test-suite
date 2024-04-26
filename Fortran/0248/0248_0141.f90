type ty
 integer,pointer :: ii(:,:)
end type

type ty1
 type(ty):: cmp
end type

type(ty1):: obj
integer :: ii
ii= f(NULL(obj%cmp%ii))
print*,ii
contains
function f(dmy)
integer,optional :: dmy(1,2)
f=1
if(present(dmy).eqv..false.)print*,'pass'
end function
end
