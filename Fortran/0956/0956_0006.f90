 type ty
  integer::pp
 end type

 type,extends(ty):: tt
  integer::pp1
 end type

 type tn
  class(ty),pointer::cptr
 end type

 type ts
  class(tt),allocatable::obj
 end type

 type(ty),target::obj
 type(ts),target::trg
 type(tn)::base
 logical :: f = .false.

 allocate(tt::trg%obj)

 base%cptr => obj
 f = associated(base%cptr, obj)
 if(.not.f) print *,'101'
 select type(aa=>base%cptr)
  class default
   print*,911

  class is(ty)
   f = associated(base%cptr, obj)
   if(.not.f) print *,'102'
 end select

 base%cptr => trg%obj
 f = associated(base%cptr, trg%obj)
 if(.not.f) print *,'103'
 select type(bb=>base%cptr)
  class default
   print*,912

  class is(ty)
   print*,913

  type is(tt)
   f = associated(base%cptr, trg%obj)
   if(.not.f) print *,'104'
 end select

 print *,'PASS'
 end
