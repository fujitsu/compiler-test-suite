type cg_solver
    real, dimension(:), allocatable :: x
end type cg_solver
type system
    type(cg_solver), POINTER :: solver 
end type system
type (system),pointer::x
type(cg_solver), POINTER :: solver_alias 
allocate(x)
x%solver=>NULL()
if (associated(x%solver))print *,'error'
allocate(x%solver)
allocate(x%solver%x(5))
x%solver%x=(/1,2,3,4,5/)
solver_alias=> x%solver
deallocate(x)
if (any(solver_alias%x/=(/1,2,3,4,5/)))print *,'error-2'
print *,'pass'
end
