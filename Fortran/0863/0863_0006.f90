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

allocate(var%ptr)
   var%ptr = ty( proc)
call var%ptr%set_services
rewind 1
read(1,*) k
if (k/=90) print *,90
print *,'pass'
end
      subroutine proc
write(1,*) 90
      end subroutine
