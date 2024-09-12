recursive subroutine s1
  type x
    integer,pointer::p=>null()
  end type
  type y
    integer,allocatable::a
  end type
  type(x)::v
  type(y)::w
  if (associated(v%p))print *,101
  if (allocated(w%a))print *,102
end
call s1
print *,'pass'
end
