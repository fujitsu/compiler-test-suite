 module mod
    type ty
 integer:: a=1
 end type
 end  module

 use mod
 type ty1
   integer:: a=1
 end type
block
 interface
   subroutine sub2(a)
    type ty
     integer:: a=1
    end type
    type(ty)::a
   end subroutine
 end interface
end block


call sub
print *,'pass'
 contains
  subroutine sub
   type (ty1)::ta
   call sub1(ta)
  end subroutine
subroutine sub1(ta)
   type (ty1)::ta
   if (ta%a/=1) print *,101
  end subroutine
 end
