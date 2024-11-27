 class(*),pointer :: x
 class(*),pointer :: y
 logical :: f = .false.

 type ty
  class(*),pointer :: x
 end type

 type(ty)::obj(2)

 allocate(x,source=1)
 allocate(y,source=1)
 allocate(x,source=1)

 x => y
 f = associated(x,y)
 if(.not.f) print *,'err1'
 select type(z=>x)
  type is (integer)
   f = associated(x,y)
   if(.not.f) print *,'err2'

  class default
   print *,'911'
 end select

 select type(z=>y)
  type is (integer)
   f = associated(x,y)
   if(.not.f) print *,'err3'

  class default
   print *,'912'
 end select

 obj(2)%x => y
 f = associated(obj(2)%x,y)
 if(.not.f) print *,'201'
 select type(z=>obj(2)%x)
  type is (integer)
   f = associated(obj(2)%x,y)
   if(.not.f) print *,'202'

  class default
   print *,'913'
 end select

 select type(z=>y)
  type is (integer)
   f = associated(obj(2)%x,y)
   if(.not.f) print *,'203'

  class default
   print *,'914'
 end select
 print *,'PASS'
 end
