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
   subroutine init_ptr(i,k)
   integer,intent(in)::i,k
   deallocate ( mystr%ptrs(iii((/i/),k))%dat )
   end subroutine
   subroutine alloc_ptr(j)
   integer,intent(in)::j
   allocate ( mystr%ptrs(j)%dat )
   end subroutine
   function ifun(ii)
   ifun=ii
   end function
 end module mymod
 program test_module_procedure
   call alloc_mystr
print *,'pass'
 end program test_module_procedure
 subroutine alloc_mystr
   use mymod
   allocate ( mystr%ptrs(1) )
   call alloc_ptr(1)
   write(1,'(a,z14)') ' loc(mystr%ptrs)=',loc(mystr%ptrs)
   allocate ( mystr%ptrs(1)%dat )
   call init_ptr(1,1)
   write(1,'(a,z14)') ' loc(mystr%ptrs(1)%dat)=',loc(mystr%ptrs(1)%dat)
 end subroutine alloc_mystr

function iii(jj,k)
integer :: jj(1)
iii=jj(k)
end function
