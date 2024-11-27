module mod01
implicit none
  type ty01
     character(len=10)  :: char01(3)
  end type
  type(ty01) :: struct01
end

  use mod01
  implicit none
  struct01%char01(1) = "0"
  write(struct01%char01(1),*) 1
  print *,"pass"
end
