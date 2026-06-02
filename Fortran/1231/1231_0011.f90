subroutine s1
type x
   integer::x1
end type
type,extends(x):: ex
  integer, allocatable::x2
end type
block
  class(x), save,allocatable::v
  allocate(ex::v)
  select type(v)
    type is(ex)
      allocate(v%x2,source=1) 
  end select
end block
end
call s1
print *,'sngg556t : pass'
end

