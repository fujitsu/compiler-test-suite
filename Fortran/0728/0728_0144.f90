module RB_M
  implicit none
  integer, parameter, public :: Key_Len = 15
  type, public :: Node_Type
    character (len = Key_Len) :: Key
    integer:: Inf
    logical:: Red
    type (Node_Type), pointer:: L_NP, R_NP
    integer :: Node_Height
  end type Node_Type
  type (Node_Type), pointer, public :: Null_NP
  type (Node_Type), pointer, private :: F_NP, G_NP, H_NP
  character(len = *), parameter, private :: Fill = ">>>>>>>>>>>>>>>>>>>>"
  character(len = len( Fill )), private :: Line

contains

  function Search( Arg_NP, S_Key ) result( Search_NP )
    type (Node_Type), pointer :: Arg_NP
    character (len = *), intent (in) :: S_Key
    type (Node_Type), pointer :: Search_NP
  end function Search

end module RB_M

program RB
  use RB_M
  implicit none
  character (len = Key_Len), parameter:: Stop_Char = "$"
  type (Node_Type), pointer :: Root_NP, Temp_NP
  character (len = Key_Len) :: New_Key
  integer:: Item_Seq, EoF
   print *,'pass'
    if (associated( Search( Root_NP, New_Key ), Null_NP )) then
    end if
end program RB
