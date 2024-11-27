type ty
  integer ::a
end type

type ty1
  type(ty):: cmp2
  integer,pointer:: p
end type

type ty2
   type(ty1) :: cmp
end type

type(ty2) :: obj[*]
end
