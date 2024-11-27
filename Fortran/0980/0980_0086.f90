module mod01
  type :: typ01
  private
  sequence
    integer :: a1
    integer :: a2
    integer :: a3
  end type
end module mod01
module mod02
  type :: typ01
  private
    integer :: a1
    integer :: a2
    integer :: a3
  end type
end module mod02

  use mod01
  type(typ01) :: type_struct,fun01

  type_struct = fun01()
  type_struct = type_struct
end

function fun01()
  use mod02
  type(typ01) :: fun01

  fun01 = fun01
end
