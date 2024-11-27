module m1
   interface
      subroutine sub(k)
      end subroutine sub
    end interface
 
   type :: ty
      procedure(sub), nopass, pointer :: sub01
   end type ty

    procedure(sub) :: proc 

     type(ty) :: ptr2(2)
end
use m1

   ptr2(2) = ty( proc)
   call ptr2(2)%sub01(k)
   if (k/=1) print *,1004

print *,'pass'
end
      subroutine proc(k)
       k=1
      end subroutine

