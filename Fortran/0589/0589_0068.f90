module m1
type tt
integer,allocatable :: ii(:)
type(ty),allocatable :: objTY(:)
end type

type ty
integer,allocatable :: jj(:)
type(tt):: objTT
end type

interface
subroutine msub(obj)
import::ty
type(ty),intent(out):: obj(:)
end subroutine
end interface

type(ty),target,allocatable :: trg(:)

contains
function fun()
type(ty),pointer :: fun(:)
fun => trg
end
end

subroutine msub(obj)
use m1
type(ty),intent(out):: obj(:)

allocate(obj(2)%jj(3))
allocate(obj(2)%objTT%ii(2))
allocate(obj(2)%objTT%objTY(2))
allocate(obj(2)%objTT%objTY(2)%jj(4))
allocate(obj(2)%objTT%objTY(2)%objTT%ii(3))
allocate(obj(2)%objTT%objTY(2)%objTT%objTY(3))
allocate(obj(2)%objTT%objTY(2)%objTT%objTY(2)%jj(5))

obj(2)%jj(1) = 30
obj(2)%jj(2) = 40
obj(2)%jj(3) = 50

obj(2)%objTT%ii(1) = 300
obj(2)%objTT%ii(2) = 301

obj(2)%objTT%objTY(2)%jj(1) = 200
obj(2)%objTT%objTY(2)%jj(2) = 201
obj(2)%objTT%objTY(2)%jj(3) = 202
obj(2)%objTT%objTY(2)%jj(4) = 203

obj(2)%objTT%objTY(2)%objTT%ii(1) = 401
obj(2)%objTT%objTY(2)%objTT%ii(2) = 402
obj(2)%objTT%objTY(2)%objTT%ii(3) = 403

obj(2)%objTT%objTY(2)%objTT%objTY(2)%jj(1) = 501
obj(2)%objTT%objTY(2)%objTT%objTY(2)%jj(2) = 502
obj(2)%objTT%objTY(2)%objTT%objTY(2)%jj(3) = 503
obj(2)%objTT%objTY(2)%objTT%objTY(2)%jj(4) = 504
obj(2)%objTT%objTY(2)%objTT%objTY(2)%jj(5) = 505
end

use m1
allocate(trg(2))
allocate(trg(1)%jj(2))
trg(1)%jj(1) = 10
trg(1)%jj(2) = 20

call msub(fun())
if(size(trg(2)%jj) .ne. 3) print*,"123"
if(any(trg(2)%jj .ne. [30,40,50])) print*,"124"

trg(2)%jj = [6,7,8]
if(any(trg(2)%jj .ne. [6,7,8])) print*,"125"

if(size(trg(2)%objTT%ii) .ne. 2) print*,"211"
if(any(trg(2)%objTT%ii .ne. [300,301])) print*,"212"

if(size(trg(2)%objTT%objTY(2)%jj) .ne. 4) print*,"213"
if(any(trg(2)%objTT%objTY(2)%jj .ne. [200,201,202,203])) print*,"214"

if(size(trg(2)%objTT%objTY(2)%objTT%ii) .ne. 3) print*,"313"
if(any(trg(2)%objTT%objTY(2)%objTT%ii .ne. [401,402,403])) print*,"314"

if(size(trg(2)%objTT%objTY(2)%objTT%objTY(2)%jj) .ne. 5) print*,"315"
if(any(trg(2)%objTT%objTY(2)%objTT%objTY(2)%jj .ne. [501,502,503,504,505])) print*,"316"
print*,"Pass"
end
