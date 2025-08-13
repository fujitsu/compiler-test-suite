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
   type(mystr_t)::mystr,mystr2
 contains
   subroutine init_ptr(i,j)
   integer,intent(in)::i,j
   deallocate ( mystr%ptrs(i)%dat, mystr2%ptrs(j)%dat )
   end subroutine
 end module mymod
 program test_module_procedure
   call alloc_mystr
print *,'pass'
 end program test_module_procedure
 subroutine alloc_mystr
   use mymod
   allocate ( mystr%ptrs(1),mystr2%ptrs(1) )
   write(14,'(a,z14)') ' loc(mystr%ptrs)=',loc(mystr%ptrs)
   allocate ( mystr%ptrs(1)%dat,mystr2%ptrs(1)%dat )
   call init_ptr(1,1)
   write(14,'(a,z14)') ' loc(mystr%ptrs(1)%dat)=',loc(mystr%ptrs(1)%dat)
 end subroutine alloc_mystr

