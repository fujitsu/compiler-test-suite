
interface assignment(=)
 subroutine isub01(is01_arg01, is01_arg02)
  type ty01
   sequence
   integer                             :: ii_01
   procedure(integer), pointer, nopass :: pr_pn01 => null()
  end type
  type ty02
   sequence
   integer                             :: ii_02
   procedure(integer), pointer, nopass :: pr_pn02 => null()
  end type
  type (ty01), intent(out) :: is01_arg01
  type (ty02), intent(in)  :: is01_arg02
 end subroutine
end interface

type ty01
 sequence
 integer                          :: ii_01
 procedure(idim), pointer, nopass :: pr_pn01 => null()
end type
type ty02
 sequence
 integer                          :: ii_02
 procedure(iabs), pointer, nopass :: pr_pn02 => null()
end type

type (ty01) :: t01_01

t01_01 = ty02(2) 

end program

subroutine isub01(is01_arg01, is01_arg02)
 type ty01
  sequence
  integer                             :: ii_01
  procedure(integer), pointer, nopass :: pr_pn01 => null()
 end type
 type ty02
  sequence
  integer                             :: ii_02
  procedure(integer), pointer, nopass :: pr_pn02 => null()
 end type
 type (ty01), intent(out) :: is01_arg01
 type (ty02), intent(in)  :: is01_arg02
 is01_arg01%ii_01 = is01_arg02%ii_02
end subroutine
