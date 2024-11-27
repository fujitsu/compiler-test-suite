module m1
Use ISO_FORTRAN_ENV
type ty
type(LOCK_type) ::ll
end type
end module

use m1
type tx
type(LOCK_TYPE),allocatable ::kk[:]
type(ty),allocatable :: co(:)
end type

type tt
type(ty),allocatable :: co(:)
type(LOCK_TYPE),allocatable ::kk[:]
end type

type(tx) ::mm
type(tt) ::mn

end
