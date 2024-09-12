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
   subroutine destroy(self)
    type(basis_type) :: self
      pointer :: self

      if (.not. associated(self)) then;   return; end if
      call destroy_ptr_part_(self)

      deallocate(self)

   end subroutine
   subroutine destroy_ptr_part_(self)
    type(basis_type) :: self

      call destroy_(self%shell)

   end subroutine

end
use mmod
 type(basis_type),pointer :: p

allocate(p)
allocate(p%shell(2))
call destroy(p)
print *,'pass'
end



