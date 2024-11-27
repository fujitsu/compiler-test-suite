 class(*),pointer :: x
 character(len=:),target,allocatable :: y
 class(*),allocatable,target :: z
 logical :: f = .false.

 allocate(character(len=2)::x)
 allocate(character(len=3)::y)
 allocate(character(len=4)::z)

 x => y
 f = associated(x,y)
 if(.not.f) print *,'101'

 select type(a=>x)
  class default 
   print*,911

  type is(character(len=*))
   f = associated(x,y)
   if(.not.f) print *,'102'
 end select

 x => z
 f = associated(x,z)
 if(.not.f) print *,'201'

 select type(a=>z)
  class default 
   print*,913

  type is(character(len=*))
   f = associated(x,z)
   if(.not.f) print *,'202'
 end select
 print *,'PASS'
 end
