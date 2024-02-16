 use iso_c_binding
        type(c_ptr):: p
        type ty
        complex,pointer::cp(:)
        end type
        type(ty)::obj
  allocate(obj%cp(4))
  cp=(1,2)
  p=c_loc( obj%cp(1)%re)
  print *,' pass'
  end

