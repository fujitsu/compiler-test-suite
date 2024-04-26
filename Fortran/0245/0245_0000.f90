PROGRAM main
USE ISO_C_BINDING

TYPE :: ty
 INTEGER::i
END TYPE

TYPE(ty), pointer,contiguous :: obj(:)
TYPE(ty),TARGET :: tt(8)
TYPE(C_PTR),POINTER ::add(:)
allocate(add(2))
obj=>tt

add=C_LOC(obj)
print*,'pass'

END
