type ty01
 sequence
 procedure(csub02), pointer, nopass :: pr_pn01
end type

type (ty01) :: t01

call csub01(t01)

contains
 subroutine csub01(arg01)
  type ty01
   sequence
   procedure(csub01), pointer, nopass :: pr_pn01
  end type
  type (ty01) :: arg01
 end subroutine
 subroutine csub02()
 end subroutine
end
