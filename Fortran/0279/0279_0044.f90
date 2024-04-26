TYPE ty(k1,k2)
  INTEGER ,kind::k1,k2
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2-k1)::ch
END TYPE
TYPE(ty(2,5))::ty_obj = ty(2,5)(101,'PDT')
integer,parameter::a=storage_size(ty_obj)
if(a .ne. storage_size(ty_obj))print*,"100"
print*,"PASS"
end
