module mod01
  type :: typ01
  private
    integer :: a1
    integer :: a2
    integer :: a3
  end type
  type(typ01):: type_struct
end module mod01

  use mod01

  call sub01(type_struct)

  print *,'pass'
end

subroutine sub01(p1)
  use mod01
  type(typ01):: p1

end
