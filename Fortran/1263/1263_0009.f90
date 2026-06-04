type t1
integer::x1
end type

type,extends(t1)::t2
integer::x2
end type

class(t1),allocatable::a(:,:)
type(t2)::x
allocate(a(3,3))

a(1,:)%x1 = 11
a(2,:)%x1 = 13
a(3,:)%x1 = 15

x%x1 = 21
x%x2 = 22

a = x

x%x1 = 31
x%x2 = 32

select type(a)
 type is(t2)
  if(size(a) /= 9) print*,201
  if(any(a(1,:)%x1 /= 21)) print*,101,a(1,:)%x1
  if(any(a(2,:)%x1 /= 21)) print*,102,a(2,:)%x1
  if(any(a(3,:)%x1 /= 21)) print*,103,a(3,:)%x1
  if(any(a(1,:)%x2 /= 22)) print*,104,a(1,:)%x2
  if(any(a(2,:)%x2 /= 22)) print*,105,a(2,:)%x2
  if(any(a(3,:)%x2 /= 22)) print*,106,a(3,:)%x2
  
 class default
  print*,911
end select
print*,"PASS"
end
