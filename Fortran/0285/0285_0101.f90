call sub('xxpass')

contains

subroutine sub(i)
character(len=6),optional :: i
 associate(aa=>i(3:6))
  print*,aa
  print*,i(3:6)
 end associate
end subroutine
end
