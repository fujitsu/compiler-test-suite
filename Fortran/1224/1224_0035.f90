 module m1
   integer,target::t =20
   type c0
     integer,pointer::p
   end type
   type b0
     integer::y1=1
     type(c0)::e11 = c0(t)
   end type
  contains 
 subroutine sub(r)
    class(b0 ):: r   
 if (.not.associated(r   %e11%p)) print *,2928
 if (.not.associated(r   %e11%p,t)) print *,29281
end 
end module 
subroutine d
use m1
    class(b0 ),allocatable:: r   
allocate(r)
 call sub(r)
end
call d
 print*,"sngg267t : pass"
 end

