 use iso_c_binding
        type(c_ptr):: p
        type ty
        complex,pointer::cp
        end type
        type ty1
        type(ty) :: cmp
        end type
        type(ty1)::obj
  allocate(obj%cmp%cp)
  cp=(1,2)
  p=c_loc( obj%cmp%cp%re)
 print *,' pass'
  end

