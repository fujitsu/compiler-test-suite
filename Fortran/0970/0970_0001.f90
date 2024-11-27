interface operator(.single.)
 function ifunc01(if01arg01) result(irst01)
  type ty01
   sequence
   procedure(integer), pointer, nopass :: pr_pn01
  end type
  type (ty01), intent(in) :: if01arg01
  integer                 :: irst01
 end function
end interface

type ty01
 sequence
 procedure(idim), pointer, nopass :: pr_pn01
end type

type (ty01) :: t01

integer     :: i

i = .single.t01

end

function ifunc01(if01arg01) result(irst01)
 type ty01
  sequence
  procedure(integer), pointer, nopass :: pr_pn01
 end type
 type (ty01), intent(in) :: if01arg01
 integer                 :: irst01
 irst01 = 1
end function
