
type t(k1)
 integer,kind::k1
  integer(k1)::a
end type


type(t(8))::obj2
type(t(4))::obj
if(obj%k1 /= 4)print*,101
if(obj2%k1 /= 8)print*,102
print*,"PASS"
end

