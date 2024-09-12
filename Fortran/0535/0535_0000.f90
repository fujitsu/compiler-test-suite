call s1
call s2
print *,'pass'
contains
subroutine s1
  type:: x
     integer(8)::x1
  end type x
  class (x),pointer   ::a
  type (x),pointer   ::b
  allocate(a)
  allocate(b)
  if(associated(a).neqv.associated(b)) print *,'err1'
end subroutine s1
subroutine s2
  type:: x
     integer(1)::x1
  end type x
  class (x),pointer   ::a
  type (x),pointer   ::b
  allocate(a)
  allocate(b)
  if(associated(a).neqv.associated(b)) print *,'err2'
end subroutine s2
end
