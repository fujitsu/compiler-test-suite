 type t1
 integer::x1
 end type

 type,extends(t1)::t2
 integer::x2
 end type

 type tt
 integer :: ii
 class(t1),allocatable::a(:,:,:)
 end type

 type(tt) :: obj
 type(t2)::x
 allocate(obj%a(4,3,2))

 obj%a(1,:,:)%x1 = 11
 obj%a(2,:,:)%x1 = 12
 obj%a(3,:,:)%x1 = 13
 obj%a(4,:,:)%x1 = 14

 x%x1 = 21
 x%x2 = 22

 obj%a = x

 select type (a=>obj%a)
  type is(t2)
   if(any(a(1,:,:)%x1 /= 21)) print*,101,a(1,:,:)%x1
   if(any(a(2,:,:)%x1 /= 21)) print*,102,a(2,:,:)%x1
   if(any(a(3,:,:)%x1 /= 21)) print*,103,a(3,:,:)%x1
   if(any(a(4,:,:)%x1 /= 21)) print*,104,a(4,:,:)%x1
   if(any(a(1,:,:)%x2 /= 22)) print*,105,a(1,:,:)%x2
   if(any(a(2,:,:)%x2 /= 22)) print*,106,a(2,:,:)%x2
   if(any(a(3,:,:)%x2 /= 22)) print*,107,a(3,:,:)%x2
   if(any(a(4,:,:)%x2 /= 22)) print*,108,a(4,:,:)%x2
   if(size(a) /= 24) print*, 109

 class default
  print*,911
 end select

 print*,"PASS"
 end
