character(len=10)::string='xxxpassxxx'

call sub()

contains
subroutine sub()
 associate(aa=>string)
  print*,aa(4:7)
 end associate
end subroutine
end
