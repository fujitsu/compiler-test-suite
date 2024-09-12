module smod
   type shell_type
     integer(kind=kind(1)) :: l = 0
     integer(kind=kind(1)) :: n_comp = 0
     integer(kind=kind(1)) :: n_cc = 0
     real(kind=kind(1.0d0)), dimension(:), pointer :: ex => NULL()
     real(kind=kind(1.0d0)), dimension(:), pointer :: cc => NULL()
   end type
   contains
   subroutine destroy_(s)
   type(shell_type),pointer::s(:)
   deallocate(s)
   end subroutine
end

module mod
   use smod
   type basis_type
     character(128) :: label
     integer(kind=kind(1)) :: n_shell
     integer(kind=kind(1)) :: n_bf
     integer(kind=kind(1)) :: n_prim
     type(shell_type), dimension(:), pointer :: shell => NULL()
   end type
end
module mmod
use mod
contains
   subroutine destroy
    type(basis_type),allocatable :: self(:)
    allocate(self(2))
   end subroutine
end
use mmod
call destroy
print *,'pass'
end



