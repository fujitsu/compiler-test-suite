subroutine s
  type x
    integer::x1
  end type
  class(x),allocatable::a,b
  allocate(a)
  !print *,same_type_as(a,b)
  if (.not.same_type_as(a,b)) print *,1001
  b=a
  if (.not.allocated(b)) print *,8001
end
call s
  print *,'sngg841p : pass'
  end
