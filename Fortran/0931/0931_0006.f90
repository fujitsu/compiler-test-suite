integer, pointer::ptr
integer, target::trg=100
ptr=>trg
print*,ptr
call sp( null() )
print*,associated(ptr)
print *,"pass"
contains
   subroutine sp(p)
     integer,pointer::p
     intent(inout)::p
     ptr=>p
   end subroutine
  end

