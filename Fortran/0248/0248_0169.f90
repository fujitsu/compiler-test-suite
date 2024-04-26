type ty
 integer,allocatable :: ii(:,:)
end type

type ty1
 type(ty):: cmp
end type

type(ty1):: obj
integer :: ii
ii= f(NULL(obj%cmp%ii))
if(ii==1) print*,'pass'
contains
function f(dmy)
integer f
integer,optional :: dmy(1,2)
f=0
if(present(dmy).eqv..false.) f=1
end function
end
