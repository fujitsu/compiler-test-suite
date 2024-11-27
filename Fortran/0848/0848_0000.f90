  type :: ty
    integer :: ii 
  end type
  type(ty),target,save :: trg

  type ty2
    class(ty),pointer::ptr
  end type

    type(ty2)::obj = ty2(trg)
  trg%ii=1
  if (obj%ptr%ii/=1) print *,101,obj%ptr%ii

    print*,"pass"
end
