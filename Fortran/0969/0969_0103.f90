
 module mod1
  type ty1
   sequence
   integer :: i
 end type
 type(ty1) :: str1
 end

 module mod2
  type ty1
   sequence
   integer :: i
 end type
 type(ty1) :: str2
 end


 use mod1
 call sub(str1)
 end

 subroutine sub(str1)
 use mod2
 type(ty1) :: str1
 end