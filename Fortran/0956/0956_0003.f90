 type ty
  integer::pp
 end type

 type,extends(ty)::ts
  integer::qq
 end type

 type tn
  class(*),pointer::cptr
 end type

 type tt
  type(ts)::obj
 end type

 class(ty),pointer::cptr
 type(ts),target::obj
 type(tt),target::trg(2)
 type(tn)::base(3)
 logical :: f = .false.

 cptr => obj
 f = associated(cptr,obj)
 if(.not.f) print *,'101'
 select type(a=>cptr)
  class default
   print*,911

  class is(ty)
   f = associated(cptr,obj)
   if(.not.f) print *,'102'
 end select

 base(3)%cptr => trg(2)%obj
 f = associated(base(3)%cptr, trg(2)%obj)
 if(.not.f) print *,'103'
 select type(a=>base(3)%cptr)
  class default
   print*,912

  class is(ty)
   f = associated(base(3)%cptr, trg(2)%obj)
   if(.not.f) print *,'104'
 end select

 print *,'PASS'
 end
