type ty1
integer(kind=8)::ii1(3)
character(len=:),allocatable:: cptr1(:)
end type

type,extends(ty1)::ty2
character(len=:),allocatable:: cptr2(:)
end type

type tn
integer::ii1(2)
class(*),allocatable::obj(:,:)
end type

type(tn)::base(2,2)

character(len=1)::aa(2,3) = "1"

allocate(ty1::base(2,2)%obj(2,3))

select type (a=>base(2,2)%obj)
 type is (ty1)
  allocate(character(len=1)::a(2,2)%cptr1(1))
  a(2,2)%cptr1 = aa(2,3)
end select

select type (a=>base(2,2)%obj)
 type is (ty1)
  base(2,2)%obj = ty1(11,["21","22"])

  select type (b=>base(2,2)%obj)
   type is (ty1)
    if(any(b(2,2)%cptr1 /= ["21","22"])) print*,101,b(2,2)%cptr1
    if(len(b(2,2)%cptr1) /= 2) print*,102,len(b(2,2)%cptr1)
    if(size(b(2,2)%cptr1) /= 2) print*,103,size(b(2,2)%cptr1)
    if(size(b) /= 6) print*,103,size(b)
    deallocate(base(2,2)%obj)
    allocate(base(2,2)%obj, mold = fun2())
    if(allocated(base(2,2)%obj) .AND. size(base(2,2)%obj) == 20) then
     deallocate(base(2,2)%obj)
     allocate(base(2,2)%obj, source = fun2())
    endif

   type is (ty2)
    print*,104

   class default
    print*,911
  end select

 type is (ty2)
  print*,104

 class default
  print*,912
end select

select type (c=>base(2,2)%obj)
 type is (ty2)
  if(any(c(3,3)%cptr1 /= ["31","32"])) print*,201,c(3,3)%cptr1
  if(any(c(3,3)%cptr2 /= ["411","422","433"])) print*,202,c(3,3)%cptr2
  if(size(c(3,3)%cptr1) /= 2) print*,203,size(c(3,3)%cptr1)
  if(size(c(3,3)%cptr2) /= 3) print*,204,size(c(3,3)%cptr2)
  if(len(c(3,3)%cptr1) /= 2) print*,205,len(c(3,3)%cptr1)
  if(len(c(3,3)%cptr2) /= 3) print*,206,len(c(3,3)%cptr2)
  if(size(c) /= 20) print*,207

 class default
  print*,913
end select

print*,"PASS"

contains
function fun2()
type(ty2)::fun2(4,5)

allocate(character(len=2)::fun2(3,3)%cptr1(2))
allocate(character(len=3)::fun2(3,3)%cptr2(3))

fun2(3,3)%cptr1 = ["31","32"]
fun2(3,3)%cptr2 = ["411","422","433"]
end function
end
