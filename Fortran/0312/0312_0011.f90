module smod
   type shell_type
     real(kind=kind(1.0d0)), dimension(:), pointer :: ex => NULL()
     real(kind=kind(1.0d0)), dimension(:), pointer :: cc => NULL()
   end type
   contains
   subroutine destroy_(s)
   type(shell_type),pointer::s(:)
   deallocate(s)
   end subroutine
end

print *,'PASS'
end
