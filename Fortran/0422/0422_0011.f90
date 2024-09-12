   subroutine init_ptr(i)
   type mydat_t
   integer::a
   end type mydat_t
 
   type myptr_t
   type (mydat_t),pointer::dat
   end type myptr_t
 
   type mystr_t
   type(myptr_t),pointer::ptrs(:)
   end type mystr_t
 
   type(mystr_t)::mystr
   integer,intent(in)::i
   call alc
   nullify ( mystr%ptrs(i)%dat )
   call chk
contains
   subroutine alc
   allocate ( mystr%ptrs(1) )
   allocate ( mystr%ptrs(1)%dat )
   end subroutine
   subroutine chk
   if ( associated(mystr%ptrs(1)%dat )) print *,201
   end subroutine
 end subroutine
 
call init_ptr(1)
print *,'pass'
 end 