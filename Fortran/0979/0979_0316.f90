  type :: typ01
  sequence
    integer :: a1
    integer :: a2
    integer :: a3
  end type
  type(typ01) :: type_struct,fun01

  type_struct = fun01()
  if (type_struct%a1 /= 1) write(6,*) "NG"
  if (type_struct%a2 /= 2) write(6,*) "NG"
  if (type_struct%a3 /= 3) write(6,*) "NG"

  print *,'pass'
end

function fun01()
  type :: typ01
  sequence
    integer :: a1
    integer :: a2
    integer :: a3
  end type
  type(typ01) :: fun01

  fun01 = typ01(1,2,3)
end
