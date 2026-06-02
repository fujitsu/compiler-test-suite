type t1
integer::a
end type
type ty
class(t1),allocatable:: a    !1)
end type
type(ty)::obj                 !2)
type(t1)::tt1=t1(5)

allocate(obj%a, source=tt1)

select type (asc=>(obj%a))    !3)
type is (t1)
  if(asc%a/=5) print*,101

class default
  print*,102
end select
print*,"sngg266k : pass"
end

