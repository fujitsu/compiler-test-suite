PROGRAM main
USE ISO_C_BINDING

TYPE :: ty
 INTEGER::i
END TYPE

TYPE(ty), pointer,contiguous :: obj(:)
TYPE(ty),TARGET :: tt(8)
TYPE(c_ptr),POINTER ::add(:)

allocate(add(8))
obj=>tt

add=c_loc(tt)
print*,'pass'

END
