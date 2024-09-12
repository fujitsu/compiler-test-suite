type ty(k)
    integer, KIND::k
    integer,allocatable :: alc(:)
    integer,allocatable :: alc2
end type

type tt
    type(ty(4)),allocatable :: obj1
end type

type tn
type(tt)::objTT
end type

type(tn)::objTN1

allocate(ty(4)::objTN1%objTT%obj1)

objTN1%objTT%obj1 = ty(4)([1,2], 10)

if(objTN1%objTT%obj1%alc(1) /= 1) print*,102
if(objTN1%objTT%obj1%alc(2) /= 2) print*,103
if(objTN1%objTT%obj1%alc2 /= 10) print*,105
print*, "PASS"
end
