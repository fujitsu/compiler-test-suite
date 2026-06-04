type ty
integer :: cptr
end type

type,extends(ty)::ts
integer :: cptr0(2)
integer,allocatable:: cptr1
end type

type tt
type(ts),allocatable::base1(:)
type(ts)::base2(4)
end type

class(ts),allocatable::rhs0(:)
type(ts),allocatable::rhs1(:)
type(tt)::objTT(2)

class(ty),allocatable::lhs(:)

allocate(ty::lhs(2))
 
allocate(rhs0(3))
allocate(rhs0(2)%cptr1)

rhs0(2)%cptr0 = -1
rhs0(2)%cptr1 = -2

allocate(rhs1(3))
allocate(rhs1(3)%cptr1)

rhs1(3)%cptr0 = -11
rhs1(3)%cptr1 = -12

allocate(objTT(2)%base1(3))
allocate(objTT(2)%base1(1)%cptr1)

objTT(2)%base1(1)%cptr0 = -111
objTT(2)%base1(1)%cptr1 = -112

allocate(objTT(2)%base2(3)%cptr1)

objTT(2)%base2(3)%cptr0 = -211
objTT(2)%base2(3)%cptr1 = -212

select type (a=>lhs)
 type is (ty)
  select type (b=>lhs)
   type is (ty)
    lhs = rhs0

   class default
    print*,911
  end select

 class default
  print*,912
end select

select type (a=>lhs)
 type is (ts)
  if(any(a(2)%cptr0 /= -1)) print*,101,a(2)%cptr0
  if(a(2)%cptr1 /= -2) print*,102,a(2)%cptr1
  if(size(a) /= 3) print*,103,size(a)

 class default
  print*,913
end select

deallocate(lhs)
allocate(ty::lhs(5))

select type (a=>lhs)
 type is (ty)
  select type (b=>lhs)
   type is (ty)
    lhs = rhs1(2:3)

   class default
    print*,914
  end select

 class default
  print*,915
end select

select type (a=>lhs)
 type is (ts)
  if(any(a(2)%cptr0 /= -11)) print*,201,a(2)%cptr0
  if(a(2)%cptr1 /= -12) print*,202,a(2)%cptr1
  if(size(a) /= 2) print*,203,size(a)

 class default
  print*,916
end select

deallocate(lhs)
allocate(ty::lhs(6))

select type (a=>lhs)
 type is (ty)
  select type (b=>lhs)
   type is (ty)
    lhs = objTT(2)%base1

   class default
    print*,917
  end select

 class default
  print*,918
end select

select type (a=>lhs)
 type is (ts)
  if(any(a(1)%cptr0 /= -111)) print*,301,a(1)%cptr0
  if(a(1)%cptr1 /= -112) print*,302,a(1)%cptr1
  if(size(a) /= 3) print*,303,size(a)

 class default
  print*,919
end select

deallocate(lhs)
allocate(ty::lhs(5))

select type (a=>lhs)
 type is (ty)
  select type (b=>lhs)
   type is (ty)
    lhs = objTT(2)%base2

   class default
    print*,920
  end select

 class default
  print*,921
end select

select type (a=>lhs)
 type is (ts)
  if(any(a(3)%cptr0 /= -211)) print*,301,a(3)%cptr0
  if(a(3)%cptr1 /= -212) print*,302,a(3)%cptr1
  if(size(a) /= 4) print*,303,size(a)

 class default
  print*,922
end select

print*,"PASS"
end
