PROGRAM main
USE ISO_C_BINDING
 
TYPE :: ty
 INTEGER::i
END TYPE
 
TYPE(ty), pointer :: obj(:)
TYPE(ty),TARGET :: tt(8)
TYPE(C_PTR),POINTER ::add(:)

obj=>tt
 
add=C_LOC(obj(::2))
 
END

