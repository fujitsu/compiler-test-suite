subroutine sub1(iii) bind(c)
  use,intrinsic :: iso_c_binding
  type(c_ptr),value :: iii
end subroutine
print *,'pass'
end
