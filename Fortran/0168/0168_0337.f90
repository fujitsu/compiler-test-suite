module m
  type bt
   integer :: x = 1
  end type

  type(bt) :: gg
end module
program main
  USE m
  print*,"pass"
End program
