 type t(a,b)
  integer,kind::a
  integer(8),len::b
  real(4)::c1(huge(b))
  real(4)::c2(b+b)
 end type
end
