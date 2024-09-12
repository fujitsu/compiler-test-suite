 module mymod
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
 contains
   subroutine init_ptr(i)
   integer,intent(in)::i
   nullify ( mystr%ptrs(i)%dat )
   end subroutine
 end module mymod
 
 program main
   use mymod
   allocate ( mystr%ptrs(1) )
   write(1,'(a,z14)') ' loc(mystr%ptrs)=',loc(mystr%ptrs)
   call init_ptr(1)
   write(1,'(a,z14)') ' loc(mystr%ptrs(1)%dat)=',loc(mystr%ptrs(1)%dat)
if (associated(mystr%ptrs(1)%dat) ) then
   print *,101
endif
print *,'pass'
 end program main
