PROGRAM main
TYPE ty(k1,k2)
INTEGER ,kind::k1,k2
 INTEGER::arr(k1:k2)
CHARACTER(LEN=k2-k1)::ch
END TYPE
TYPE(ty(2,5))::ty_obj
TYPE(ty(2,5)),pointer::ty_ptr
TYPE(ty(2,5)),target::ty_obj_tar = ty(2,5)(101,'PDT')
data ty_obj,ty_ptr /ty(2,5)(101,'PDT'), ty_obj_tar/

if(associated(ty_ptr).neqv..true.)print*,"101"
if(any(ty_ptr%arr.ne.[101,101,101,101]))print*,"102"
if(any(ty_obj%arr.ne.[101,101,101,101]))print*,"103",ty_obj%arr

print*,'PASS'
END PROGRAM
