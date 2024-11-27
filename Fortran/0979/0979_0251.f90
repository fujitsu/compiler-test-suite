module mod01
implicit none
  character(len=10) :: arr_char01(10)
end

  use mod01
  implicit none

  arr_char01 = "0"
  write(arr_char01(1),*) 1
  print *,"pass"
end
