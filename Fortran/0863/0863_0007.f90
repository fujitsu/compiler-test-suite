module m1
   interface
      subroutine sub
      end subroutine sub
    end interface
 
   type :: ty
      procedure(sub), nopass, pointer :: set_services
   end type ty

 type :: wty
     type(ty), pointer :: ptr
  end type wty
    procedure(sub) :: proc 

    type(wty) :: var
end
use m1

allocate(var%ptr)
   var%ptr = ty( proc)
call var%ptr%set_services
rewind 15
read(15,*) k
if(k/=101) print *,901
print *,'pass'
end
      subroutine proc
write(15,*) 101
      end subroutine
