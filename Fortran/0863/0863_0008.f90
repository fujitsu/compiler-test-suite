module m2
   interface
      subroutine sub
      end subroutine sub
    end interface
 
   type :: ty
      procedure(sub), nopass, pointer :: set_services
   end type ty

     type(ty), pointer :: ptr
    procedure(sub) :: proc 

end
use m2

   allocate(ptr)
   ptr = ty( proc)
call ptr%set_services
rewind 1
read(1,*) k
if (k/=9) print *,900
print *,'pass'
end
      subroutine proc
write(1,*)9
      end subroutine