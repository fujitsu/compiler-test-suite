PROGRAM main
USE ISO_C_BINDING
 
TYPE,BIND(C) :: ty
 INTEGER::i
END TYPE

TYPE(ty),target  :: obj(2)
TYPE(C_PTR),pointer ::add(:)
allocate(add(2))
add(1)=C_LOC(obj)
add=C_LOC(obj)
print*,'pass'
 
END

