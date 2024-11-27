  type :: typ01
  sequence
    integer :: a1
    integer :: a2
    integer :: a3
  end type
  type(typ01) :: type_struct
  type_struct = typ01(1,2,3)

  call sub01(type_struct)

  print *,'pass'
end

subroutine sub01(p01)
  type :: typ01
  sequence
    integer :: a1
    integer :: a2
    integer :: a3
  end type
  type(typ01) :: p01

  if (p01%a1 /= 1) write(6,*) "NG"
  if (p01%a2 /= 2) write(6,*) "NG"
  if (p01%a3 /= 3) write(6,*) "NG"
end
