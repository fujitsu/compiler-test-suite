 module mod1
 interface
  function pud() result(ia)
   integer :: ia
  end function
 end interface
 type ty1
  sequence
  integer,pointer :: i
  procedure(pud),pointer,nopass :: ia
 end type
 type(ty1) :: str1
 end

 module mod2
 interface
  function pud() result(ia)
  integer :: ia
  end function
 end interface
  type ty1
 sequence
   integer,pointer :: i
   procedure(pud),pointer,nopass :: ia
 end type
 type(ty1) :: str2
 end


 use mod1
 use mod2
 str1=str2
 end
