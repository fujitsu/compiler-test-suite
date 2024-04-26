PROGRAM main
USE ISO_C_BINDING

TYPE :: ty
 INTEGER::i
END TYPE

block
TYPE(C_PTR) ::add
 
TYPE(ty), pointer :: obj
TYPE(ty),TARGET :: tt

obj=>tt
 
add=C_LOC(obj)
if(c_associated(add,c_loc(obj)) .eqv. .true.) print*,'pass'
end block
END
