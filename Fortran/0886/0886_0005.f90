PROGRAM main
USE ISO_C_BINDING
 
TYPE :: ty
 INTEGER::i
END TYPE
 
TYPE(ty), pointer :: obj(:,:,:)
contiguous :: obj
TYPE(ty),TARGET :: tt(8,8,8)
TYPE(C_PTR),POINTER ::add(:,:,:)

obj=>tt
 
add=C_LOC(obj(::2,:,:))
 
END

