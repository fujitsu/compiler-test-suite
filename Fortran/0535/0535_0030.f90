  type:: t
     complex::cc
  end type t
  class(*),allocatable::a
  class(*),pointer::b
  type:: tt
  class(*),pointer::aa
  class(*),pointer::bb
  class(*),pointer::cc(:)
  end type
   type(tt)::ttt(2)
  allocate(t::a)
  allocate(t::ttt(2)%aa)
  allocate(t::ttt(2)%cc(2))
  call sub(a) 
print *,'pass'
contains
subroutine sub(dd)
  class(*),target::dd
  logical::f
  b => dd
  f=associated(b, dd)
  if (.not.f) print *,'err1'
  f=.false.
  if (associated(b) .and. &
       same_type_as(a, dd) .and. &
       (loc(dd)==loc(b))) then
     f = .true.
  end if
  if (.not.f) print *,'err2'
  ttt(1)%bb => ttt(2)%aa
  f=associated(ttt(2)%aa, ttt(1)%bb)
  if (.not.f) print *,'err3'
  
  f=.false.
  if (associated(ttt(1)%bb) .and. &
       same_type_as(ttt(2)%aa, ttt(1)%bb) .and. &
       (loc(ttt(2)%aa)==loc(ttt(1)%bb))) then
     f = .true.
  end if
  if (.not.f) print *,'err4'
  end
  end
