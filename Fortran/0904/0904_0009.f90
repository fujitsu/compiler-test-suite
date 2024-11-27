use iso_fortran_env
type  tt
type(LOCK_TYPE),allocatable :: xx
end type

type :: ty_1
type(tt) :: ii
type(LOCK_TYPE),allocatable :: cmp(:,:,:)[:,:]
end type

type(ty_1) :: obj
real :: kk

End
