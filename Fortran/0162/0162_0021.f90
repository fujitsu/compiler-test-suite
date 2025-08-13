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
   type(mystr_t)::mystr(1)
character(100) :: aaa
 contains
   subroutine init_ptr(i,j)
   integer,intent(in)::i,j
   nullify    ( mystr(j)%ptrs(i)%dat )
   end subroutine
 end module mymod
 program test_module_procedure
   call alloc_mystr
print *,'pass'
 end program test_module_procedure
 subroutine alloc_mystr
   use mymod
   allocate ( mystr(1)%ptrs(1) )
   write(24,'(a,z14)') ' loc(mystr(1)%ptrs)=',loc(mystr(1)%ptrs)
   allocate ( mystr(1)%ptrs(1)%dat )
   call init_ptr(1,1)
   write(24,'(a,z14)') ' loc(mystr%ptrs(1)%dat)=',loc(mystr(1)%ptrs(1)%dat)
 end subroutine alloc_mystr

