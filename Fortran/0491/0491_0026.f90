  type :: ty
    integer :: ii 
  end type
  type(ty),target,save :: trg

  type ty2
    type(ty),pointer::ptr
  end type

  type ty3
    type(ty2)::obj = ty2(trg)
  end type
  type(ty3)::obj3
  trg%ii=1
  if (obj3%obj%ptr%ii/=1) print *,101,obj3%obj%ptr%ii

    print*,"pass"
end
