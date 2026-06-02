subroutine s1
type x
   integer::x1
end type
type,extends(x):: ex
  integer, allocatable::x2
end type
block
  class(x), allocatable::v,v2(:,:)
  class(x), pointer    ::q,q2(:,:)
  allocate(ex::v,v2(2,3),q,q2(3,2))
  select type(v)
    type is(ex)
      allocate(v%x2,source=1) 
  end select
  select type(v2)
    type is(ex)
      allocate(v2(2,3)%x2,source=1) 
  end select
  select type(q)
    type is(ex)
      allocate(q%x2,source=1) 
  end select
  select type(q2)
    type is(ex)
      allocate(q2(3,2)%x2,source=1) 
  end select
end block
end
call s1
print *,'sngg542t : pass'
end

