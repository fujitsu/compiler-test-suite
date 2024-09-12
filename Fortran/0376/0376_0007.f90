module m
interface
 subroutine s(x) BIND(c,name='MPI_Bcast')
   use ,intrinsic::iso_c_binding,only:c_ptr
   type(c_ptr),value::x
 end subroutine
end interface
end
use m
use ,intrinsic::iso_c_binding,only:c_loc
integer,target::i
call s(c_loc(i))
print *,'pass'
end

 subroutine s(x) BIND(c,name='MPI_Bcast')
   use ,intrinsic::iso_c_binding,only:c_ptr
   type(c_ptr),value::x
 end subroutine
