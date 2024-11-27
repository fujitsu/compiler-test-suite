type ty01
 sequence
 procedure(integer), pointer, nopass :: pprocp01
end type

type (ty01) :: t01

call sub01(t01)

end

subroutine sub01(s01_arg01)
 intrinsic :: iabs
 type ty01
  sequence
   procedure(iabs), pointer, nopass :: pprocp01
 end type
 type (ty01) :: s01_arg01
end subroutine
