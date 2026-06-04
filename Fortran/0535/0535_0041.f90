  type:: x
     integer(8)::x1
  end type x
  class (x),pointer   ::a
  class (*),pointer   ::b
  logical::f
  allocate(a)
  f=.false.
  b=>a
  f=associated(a, b)
  if (.not.f) print *,'err1'
  f=.false.
  if (associated(a) .and. &
       same_type_as(a, b) .and. &
       (loc(a)==loc(b))) then
     f = .true.
  end if
  if (.not.f) print *,'err2'
  print *,'pass'
end
