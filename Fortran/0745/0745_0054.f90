type cg_solver
    real, dimension(:), pointer :: x
end type cg_solver

type system
    type(cg_solver), POINTER :: solver=>NULL()
end type system
type (system)::x
if (associated(x%solver))print *,'error'
print *,'pass'
end
