subroutine s1
type x
   integer::x1
end type
type,extends(x):: ex
  integer, allocatable::x2
end type
block
  class(x), allocatable::v
  allocate(ex::v)
  select type(v)
    type is(ex)
      allocate(v%x2,source=1) 
  end select
end block
end
call s1
print *,'sngg474t : pass'
end

