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
end
subroutine s1
use m1

   allocate(var(2)%ptr(2))
   var(2)%ptr(:) = ty( proc)
   call var(2)%ptr(2)%sub01(k)
   if (k/=1) print *,1001
   k = subx( ty( proc ) )
   if( k /=1) print *,2020
contains
function   subx( x) result(r)
type(ty)::x
integer::r
r=1
end function
end
      subroutine proc(k)
       k=1
      end subroutine

call s1
print *,'pass'
end



