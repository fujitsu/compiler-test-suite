 module mymod
   type mydat_t
   integer::a
   end type mydat_t
   type myptr_t
   type (mydat_t),pointer::dat
   end type myptr_t
   type(myptr_t),pointer::ptrs(:)
 contains
   subroutine init_ptr(i)
   integer,intent(in)::i
   deallocate ( ptrs(i)%dat )
   end subroutine
 end module mymod
 program test_module_procedure
   call alloc_mystr
print *,'pass'
 end program test_module_procedure
 subroutine alloc_mystr
   use mymod
   allocate ( ptrs(1) )
   write(13,'(a,z14)') ' loc(ptrs)=',loc(ptrs)
   allocate ( ptrs(1)%dat )
   call init_ptr(1)
   write(13,'(a,z14)') ' loc(ptrs(1)%dat)=',loc(ptrs(1)%dat)
 end subroutine alloc_mystr

