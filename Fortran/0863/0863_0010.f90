module m1
   interface
      subroutine sub(k)
      end subroutine sub
    end interface
 
   type :: ty
      procedure(sub), nopass, pointer :: sub01
   end type ty

 type :: wty
     type(ty), pointer :: ptr(:)
  end type wty
 type :: xty
     type(ty) :: ptr(2)
  end type 
    procedure(sub) :: proc 

    type(wty) :: var(2)
    type(xty) :: var1(2)
     type(ty), pointer :: ptr1(:)
     type(ty) :: ptr2(2)
end
use m1

   allocate(var(2)%ptr(2))
   var(2)%ptr(:) = ty( proc)
   call var(2)%ptr(2)%sub01(k)
   if (k/=1) print *,1001
   k=0
   var1(2)%ptr(:) = ty( proc)
   call var1(2)%ptr(2)%sub01(k)
   if (k/=1) print *,1002

   k=0
   allocate(ptr1(2))
   ptr1(:) = ty( proc)
   call ptr1(2)%sub01(k)
   if (k/=1) print *,1003
   k=0
   ptr2(:) = ty( proc)
   call ptr2(2)%sub01(k)
   if (k/=1) print *,1004

print *,'pass'
end
      subroutine proc(k)
       k=1
      end subroutine

