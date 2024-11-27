module m1
   interface
      subroutine sub(k)
      end subroutine sub
    end interface
 
   type :: ty
      procedure(sub), nopass, pointer :: sub01
   end type ty

 type :: wty
     type(ty), pointer :: ptr
  end type wty
 type :: xty
     type(ty) :: ptr
  end type 
    procedure(sub) :: proc 

    type(wty) :: var
    type(xty) :: var1
     type(ty), pointer :: ptr1
     type(ty) :: ptr2
end
use m1

   allocate(var%ptr)
   var%ptr = ty( proc)
   call var%ptr%sub01(k)
   if (k/=1) print *,1001
   k=0
   var1%ptr = ty( proc)
   call var1%ptr%sub01(k)
   if (k/=1) print *,1002

   k=0
   allocate(ptr1)
   ptr1 = ty( proc)
   call ptr1%sub01(k)
   if (k/=1) print *,1003
   k=0
   ptr2 = ty( proc)
   call ptr2%sub01(k)
   if (k/=1) print *,1004

print *,'pass'
end
      subroutine proc(k)
       k=1
      end subroutine

