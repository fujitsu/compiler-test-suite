program main
 
 type::derived_type
  integer::i
 end type
 
CLASS (*),POINTER ::ptr

TYPE(derived_type),TARGET :: tgt
 
ptr => tgt
 
print*,'pass'
end
