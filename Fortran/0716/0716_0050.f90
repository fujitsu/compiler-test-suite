end
subroutine sub(shape)
 use iso_c_binding
 integer ,pointer  :: ip(:)
 type(c_ptr),pointer :: vext
 integer,dimension(*) :: shape
 call c_f_pointer(cptr=vext,fptr=ip,shape=shape)
end
