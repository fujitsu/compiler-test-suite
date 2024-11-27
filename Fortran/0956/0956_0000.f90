 class(*),pointer :: x
 class(*),pointer :: a(:)
 integer,target :: y
 integer,target :: b(2)
 logical :: f = .false.

 type ty
  integer::aa
  class(*),pointer :: z
 end type

 type(ty)::obj(2)

 x => y
 f = associated(x,y)
 if(.not.f) print *,'101'
 select type(p=>x)
 class default
    print *,'911'

 type is (integer)
  if(.not.associated(x,y)) print *,'102'
 end select

 a=>b
 if(.not.associated(a,b)) print *,'103'
 select type(q=>a)
 class default
    print *,'912'

 type is (integer)
  if(.not.associated(a,b)) print *,'104'
 end select

 obj(2)%z => y
 if(.not.associated(obj(2)%z,y)) print *,'105'
 select type(p=>obj(2)%z)
 class default
    print *,'913'

 type is (integer)
  if(.not.associated(obj(2)%z,y)) print *,'106'
 end select
 print *,'PASS'
 end
