module mod
   type basis_type
     character(128) :: label
     integer(kind=kind(1)) :: n_shell
     integer(kind=kind(1)) :: n_bf
     integer(kind=kind(1)) :: n_prim
     integer, dimension(:), pointer :: shell => NULL()
   end type
contains
   subroutine destroy(self)
    type(basis_type) :: self
      pointer :: self

      deallocate(self)

   end subroutine
end
use mod
 type(basis_type),pointer :: p

allocate(p)
allocate(p%shell(2))
call destroy(p)
print *,'pass'
end



