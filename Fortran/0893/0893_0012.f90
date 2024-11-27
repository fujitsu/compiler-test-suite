type ty(k)
 integer,kind::k
 integer :: a
 end type
 type(ty(2))::obj
 codimension :: obj[*]
 end

