module m1
type ty
integer,allocatable :: alc(:)
end type

type(ty),target,allocatable :: trg,obj

contains
function fun()
type(ty),pointer :: fun
fun => trg
end
end

use m1
allocate(trg)
allocate(trg%alc(2))
trg%alc(1) = 10
trg%alc(2) = 20

allocate(obj)
allocate(obj%alc(3))
obj%alc(1) = 30
obj%alc(2) = 40
obj%alc(3) = 50

if(size(trg%alc) .ne. 2) print*,"122"
fun() = obj
if(size(trg%alc) .ne. 3) print*,"123"
if(any(trg%alc .ne. [30,40,50])) print*,"124"
print*,"Pass"
end

