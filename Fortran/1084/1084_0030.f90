type ty
integer :: cptr
end type

type,extends(ty)::ts
integer :: cptr0(2)
integer,allocatable:: cptr1
end type

type tt
type(ts),allocatable::base1
type(ts)::base2(3)
end type

class(ts),allocatable::rhs0
type(ts),allocatable::rhs1(:)
type(tt)::objTT(2)

class(ty),allocatable::lhs

allocate(lhs)
 
allocate(rhs0)
allocate(rhs0%cptr1)

rhs0%cptr0 = -1
rhs0%cptr1 = -2

allocate(rhs1(2))
allocate(rhs1(2)%cptr1)

rhs1(2)%cptr0 = -11
rhs1(2)%cptr1 = -12

allocate(objTT(2)%base1)
allocate(objTT(2)%base1%cptr1)

objTT(2)%base1%cptr0 = -111
objTT(2)%base1%cptr1 = -112

allocate(objTT(2)%base2(3)%cptr1)

objTT(2)%base2(3)%cptr0 = -211
objTT(2)%base2(3)%cptr1 = -212

select type (a=>lhs)
 type is (ty)
  select type (b=>lhs)
   type is (ty)
    deallocate(lhs)
    allocate(lhs, source = rhs0)

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (a=>lhs)
 type is (ts)
  if(any(a%cptr0 /= -1)) print*,101,a%cptr0
  if(a%cptr1 /= -2) print*,102,a%cptr1

 class default
  print*,913
end select

deallocate(lhs)
allocate(ty::lhs)

select type (a=>lhs)
 type is (ty)
  select type (b=>lhs)
   type is (ty)
    deallocate(lhs)
    allocate(lhs, mold = rhs1(2))
    if(allocated(lhs)) then
     lhs = rhs1(2)
    endif

   class default
    print*,914
  end select

 class default
  print*,915
end select

select type (a=>lhs)
 type is (ts)
  if(any(a%cptr0 /= -11)) print*,201,a%cptr0
  if(a%cptr1 /= -12) print*,202,a%cptr1

 class default
  print*,916
end select

deallocate(lhs)
allocate(ty::lhs)

select type (a=>lhs)
 type is (ty)
  select type (b=>lhs)
   type is (ty)
    deallocate(lhs)
    allocate(lhs, source = objTT(2)%base1)

   class default
    print*,917
  end select

 class default
  print*,918
end select

select type (a=>lhs)
 type is (ts)
  if(any(a%cptr0 /= -111)) print*,301,a%cptr0
  if(a%cptr1 /= -112) print*,302,a%cptr1

 class default
  print*,919
end select

deallocate(lhs)
allocate(ty::lhs)

select type (a=>lhs)
 type is (ty)
  select type (b=>lhs)
   type is (ty)
    deallocate(lhs)
    allocate(lhs, source = objTT(2)%base2(3))

   class default
    print*,920
  end select

 class default
  print*,921
end select

select type (a=>lhs)
 type is (ts)
  if(any(a%cptr0 /= -211)) print*,301,a%cptr0
  if(a%cptr1 /= -212) print*,302,a%cptr1

 class default
  print*,922
end select

print*,"PASS"
end
