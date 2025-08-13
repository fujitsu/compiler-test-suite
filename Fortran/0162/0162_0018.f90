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
   deallocate ( mystr%ptrs((i))%dat )
   end subroutine
 end module mymod
 program test_module_procedure
   call alloc_mystr
print *,'pass'
 end program test_module_procedure
 subroutine alloc_mystr
   use mymod
   allocate ( mystr%ptrs(1) )
   write(21,'(a,z14)') ' loc(mystr%ptrs)=',loc(mystr%ptrs)
   allocate ( mystr%ptrs(1)%dat )
   call init_ptr(1)
   write(21,'(a,z14)') ' loc(mystr%ptrs(1)%dat)=',loc(mystr%ptrs(1)%dat)
 end subroutine alloc_mystr

