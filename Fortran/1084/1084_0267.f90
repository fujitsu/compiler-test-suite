type t0
  integer::jj
end type
type ty
  class(t0),allocatable :: cmp(:)
end type    
type(ty),target:: obj
type ty2
  class(ty),allocatable :: ptr2(:)
  class(ty),pointer :: ptr(:)
end type
type(ty2),target::obj3
allocate(t0 :: obj%cmp(3))
allocate(ty ::obj3%ptr2(3))
select type(a=>obj3%ptr2)
type is (ty)
  allocate(a(1)%cmp(3))
  allocate(a(2)%cmp(3))
  allocate(a(3)%cmp(3))
  obj3%ptr=>a
  select type(x=>a(1)%cmp)
    type is (t0)
     x=t0(10)
     select type(x=>a(1)%cmp)
      type is (t0)
       if(any(x%jj.ne.10))print*,"202"
     end select
  end select
  select type(a=>obj3%ptr)
   type is (ty)
    select type(a=>obj3%ptr)
       type is (ty)
    select type(x=>a(1)%cmp)
     type is (t0)
      if(any(x%jj.ne.10))print*,"101"
  end select
  end select
end select
class default
print*,"103"
end select
print*,"Pass"
end
