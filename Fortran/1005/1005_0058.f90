   type ty1
     integer i
   end type
   type(ty1) :: a
   call sub(a)
   end
   subroutine sub(a)
   type ty1
     real    i
   end type
   type(ty1) :: a
a=a
   end
