module m1
type ty
integer,allocatable :: alc(:)
type(ty),allocatable :: rec_com
end type

type(ty),target,allocatable :: trg

contains
function fun()
type(ty),pointer :: fun
fun => trg
end
end

use m1
type(ty):: obj

allocate(trg)
allocate(trg%alc(2))
trg%alc(1) = 10
trg%alc(2) = 20

allocate(obj%alc(3))
allocate(obj%rec_com)
allocate(obj%rec_com%alc(2))
allocate(obj%rec_com%rec_com)
allocate(obj%rec_com%rec_com%alc(4))
obj%alc(1) = 30
obj%alc(2) = 40
obj%alc(3) = 50

obj%rec_com%alc(1) = 300
obj%rec_com%alc(2) = 301
obj%rec_com%rec_com%alc(1) = 200
obj%rec_com%rec_com%alc(2) = 201
obj%rec_com%rec_com%alc(3) = 202
obj%rec_com%rec_com%alc(4) = 203

if(size(trg%alc) .ne. 2) print*,"122"

fun() = obj
if(size(trg%alc) .ne. 3) print*,"123"
if(any(trg%alc .ne. [30,40,50])) print*,"124"
trg%alc = [6,7,8]
if(any(trg%alc .ne. [6,7,8])) print*,"125"

if(size(trg%rec_com%alc) .ne. 2) print*,"211"
if(any(trg%rec_com%alc .ne. [300,301])) print*,"212"

if(size(trg%rec_com%rec_com%alc) .ne. 4) print*,"213"
if(any(trg%rec_com%rec_com%alc .ne. [200,201,202,203])) print*,"214"
print*,"Pass"
end
