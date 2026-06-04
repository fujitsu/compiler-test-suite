 module mod
    type ty
 integer:: a=1
 end type
 end  module

 use mod
 type ty1
   integer:: a=1
 end type
 type ty2
   integer:: a=2
 end type
 type(ty2),pointer::p2(:)
block
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
 allocate(p2(2))
 if (p2(1)%a/=2) print *,105
 if (p2(2)%a/=2) print *,106
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
