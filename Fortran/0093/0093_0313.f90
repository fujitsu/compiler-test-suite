 use iso_c_binding
        type(c_ptr):: p
  complex,pointer::cp(:)
  allocate(cp(4))
  cp=(1,2)
  p=c_loc( cp   )
  p=c_loc( cp(1)%re)
  print *,' pass'
  end

