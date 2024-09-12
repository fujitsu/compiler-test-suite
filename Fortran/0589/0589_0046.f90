module m1
type tt
integer,allocatable :: ii(:)
type(ty),allocatable :: objTY
end type

type ty
integer,allocatable :: jj(:)
type(tt):: objTT
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
allocate(trg%jj(2))
trg%jj(1) = 10
trg%jj(2) = 20

allocate(obj%jj(3))
allocate(obj%objTT%ii(2))
allocate(obj%objTT%objTY)
allocate(obj%objTT%objTY%jj(4))
allocate(obj%objTT%objTY%objTT%ii(3))
allocate(obj%objTT%objTY%objTT%objTY)
allocate(obj%objTT%objTY%objTT%objTY%jj(5))

obj%jj(1) = 30
obj%jj(2) = 40
obj%jj(3) = 50

obj%objTT%ii(1) = 300
obj%objTT%ii(2) = 301

obj%objTT%objTY%jj(1) = 200
obj%objTT%objTY%jj(2) = 201
obj%objTT%objTY%jj(3) = 202
obj%objTT%objTY%jj(4) = 203

obj%objTT%objTY%objTT%ii(1) = 401
obj%objTT%objTY%objTT%ii(2) = 402
obj%objTT%objTY%objTT%ii(3) = 403

obj%objTT%objTY%objTT%objTY%jj(1) = 501
obj%objTT%objTY%objTT%objTY%jj(2) = 502
obj%objTT%objTY%objTT%objTY%jj(3) = 503
obj%objTT%objTY%objTT%objTY%jj(4) = 504
obj%objTT%objTY%objTT%objTY%jj(5) = 505

if(size(trg%jj) .ne. 2) print*,"122"

fun() = obj
if(size(trg%jj) .ne. 3) print*,"123"
if(any(trg%jj .ne. [30,40,50])) print*,"124"

trg%jj = [6,7,8]
if(any(trg%jj .ne. [6,7,8])) print*,"125"
if(any(obj%jj .ne. [30,40,50])) print*,"126"

if(size(trg%objTT%ii) .ne. 2) print*,"211"
if(any(trg%objTT%ii .ne. [300,301])) print*,"212"

if(size(trg%objTT%objTY%jj) .ne. 4) print*,"213"
if(any(trg%objTT%objTY%jj .ne. [200,201,202,203])) print*,"214"

if(size(trg%objTT%objTY%objTT%ii) .ne. 3) print*,"313"
if(any(trg%objTT%objTY%objTT%ii .ne. [401,402,403])) print*,"314"

if(size(trg%objTT%objTY%objTT%objTY%jj) .ne. 5) print*,"315"
if(any(trg%objTT%objTY%objTT%objTY%jj .ne. [501,502,503,504,505])) print*,"316"
print*,"Pass"
end
