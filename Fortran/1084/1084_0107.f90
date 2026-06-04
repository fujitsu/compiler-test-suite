type ty
integer :: cptr
end type

type,extends(ty)::ts
integer :: cptr0(2)
integer,allocatable:: cptr1
end type

type tt
type(ts)::base2
type(ts),allocatable::base1
end type

class(ts),allocatable::rhs0
type(ts),allocatable::rhs1
type(tt)::objTT(2)

type tn
integer::ii(2)
class(*),allocatable::lhs
end type

type(tn)::base(3)

allocate(ty::base(3)%lhs)
 
allocate(rhs0)
allocate(rhs0%cptr1)

rhs0%cptr0 = -1
rhs0%cptr1 = -2

allocate(rhs1)
allocate(rhs1%cptr1)

rhs1%cptr0 = -11
rhs1%cptr1 = -12

allocate(objTT(2)%base1)
allocate(objTT(2)%base1%cptr1)

objTT(2)%base1%cptr0 = -111
objTT(2)%base1%cptr1 = -112

select type (a=>base(3)%lhs)
 type is (ty)
  select type (b=>base(3)%lhs)
   type is (ty)
    call move_alloc(rhs0, base(3)%lhs)

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (a=>base(3)%lhs)
 type is (ts)
  if(any(a%cptr0 /= -1)) print*,101,a%cptr0
  if(a%cptr1 /= -2) print*,102,a%cptr1

 class default
  print*,913
end select

deallocate(base(3)%lhs)
allocate(ty::base(3)%lhs)

select type (a=>base(3)%lhs)
 type is (ty)
  select type (b=>base(3)%lhs)
   type is (ty)
    call move_alloc(rhs1, base(3)%lhs)

   class default
    print*,914
  end select

 class default
  print*,915
end select

select type (a=>base(3)%lhs)
 type is (ts)
  if(any(a%cptr0 /= -11)) print*,201,a%cptr0
  if(a%cptr1 /= -12) print*,202,a%cptr1

 class default
  print*,916
end select

deallocate(base(3)%lhs)
allocate(ty::base(3)%lhs)

select type (a=>base(3)%lhs)
 type is (ty)
  select type (b=>base(3)%lhs)
   type is (ty)
    call move_alloc(objTT(2)%base1, base(3)%lhs)

   class default
    print*,917
  end select

 class default
  print*,918
end select

select type (a=>base(3)%lhs)
 type is (ts)
  if(any(a%cptr0 /= -111)) print*,301,a%cptr0
  if(a%cptr1 /= -112) print*,302,a%cptr1

 class default
  print*,919
end select

print*,"PASS"
end
