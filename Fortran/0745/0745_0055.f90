type cg_solver
    real, dimension(:), allocatable :: x
end type cg_solver
type system
    type(cg_solver), POINTER :: solver 
end type system
type (system)::x
x%solver=>NULL()
if (associated(x%solver))print *,'error'
allocate(x%solver)
allocate(x%solver%x(5))
x%solver%x=(/1,2,3,4,5/)
deallocate(x%solver)
print *,'pass'
end
