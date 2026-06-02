 class(*),pointer :: x
 real(kind=8),target :: y
 complex,target :: z
 logical :: f = .false.

 type ty
  class(*),pointer :: x
 end type

 type(ty)::obj(2)

 x => y
 f = associated(x,y)
 if(.not.f) print *,'101'
 select type(a=>x)
 class default
    print *,'911'

 type is (real(kind=8))
  f = .false.
  f = associated(x,y)
  if(.not.f) print *,'102'
 end select

 f = .false.
 obj(2)%x => y
 f = associated(obj(2)%x,y)
 if(.not.f) print *,'103'
 select type(a=>obj(2)%x)
 class default
    print *,'912'

 type is (real(kind=8))
  f = .false.
  f = associated(obj(2)%x,y)
  if(.not.f) print *,'104'
 end select

 x => z
 if(.not.associated(x,z)) print *,'105'
 select type(b=>x)
 class default
    print *,'913'

 type is (complex)
  if(.not.associated(x,z)) print *,'106'
 end select

 f = .false.
 obj(2)%x => z
 f = associated(obj(2)%x,z)
 if(.not.f) print *,'107'
 select type(a=>obj(2)%x)
 class default
    print *,'914'

 type is (complex)
  f = .false.
  f = associated(obj(2)%x,z)
  if(.not.f) print *,'108'
 end select

 print *,'PASS'
 end
