Block 
type ty(k)
 integer,kind::k
  type (ty1(2)),pointer::Next
end type

type ty1(k1)
 integer,kind::k1
 type(ty(2))::obj
end type
end block
end

