  use iso_c_binding
  type(c_ptr):: p
  complex,pointer::cp
  allocate(cp)
  cp=(1,2)
  p=c_loc( cp   )
  p=c_loc( cp%re)
  print *,' pass'
  end

