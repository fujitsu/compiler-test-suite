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
type tt
integer :: i
end type
 contains
   subroutine init_ptr(i)
   type(tt),intent(in)::i
   deallocate ( mystr%ptrs(int(i%i))%dat )
   end subroutine
 end module mymod
 program test_module_procedure
   call alloc_mystr
print *,'pass'
 end program test_module_procedure
 subroutine alloc_mystr
   use mymod
   type(tt)::str
   allocate ( mystr%ptrs(1) )
   write(7,'(a,z14)') ' loc(mystr%ptrs)=',loc(mystr%ptrs)
   allocate ( mystr%ptrs(1)%dat )
   str%i=1
   call init_ptr(str)
   write(7,'(a,z14)') ' loc(mystr%ptrs(1)%dat)=',loc(mystr%ptrs(1)%dat)
 end subroutine alloc_mystr

