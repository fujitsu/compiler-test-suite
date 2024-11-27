use iso_fortran_env
type coord
   real(8), allocatable :: xyz(:,:)
end type coord
type method_base
  integer::x1
      type(LOCK_TYPE) :: foo
end type
     type,extends(method_base) :: method_grp
      type(LOCK_TYPE) :: foo2
      type(coord), allocatable :: grp(:)
     end type method_grp
print *,'pass'
end
