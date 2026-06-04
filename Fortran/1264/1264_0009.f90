 type ty
 class(*),allocatable :: cptr(:)
 character(len=:),allocatable :: bb(:)
 character,allocatable :: aa(:)
 end type

 type(ty)::obj(2)

 allocate(character(len=2)::obj(1)%bb(3))
 allocate(character::obj(1)%aa(3))

 obj(1)%aa = ["1","2","3"]
 obj(1)%bb = ["AA","BB","CC"]

do i=1,3
 obj(1)%cptr = obj(1)%bb // obj(1)%aa(1)
end do
 select type(a=>obj(1)%cptr)
  type is(character(len=*))
   if(size(a) /= 3) print*,101
   if(len(a) /= 3) print*,102
   if(any(a /= ["AA1","BB1","CC1"])) print*,103, a

  class default
   print*,911
 end select

do i=1,3
 obj(1)%cptr = obj(1)%bb(2:3) // obj(1)%aa(1:3:2) // fun()
end do
 select type(b=>obj(1)%cptr)
  type is(character(len=*))
   if(size(b) /= 2) print*,201
   if(len(b) /= 5) print*,202
   if(any(b /= ["BB1XX","CC3YY"])) print*,203, b

  class default
   print*,912
 end select

do i=1,3
 obj(1)%cptr = obj(1)%bb(1:3) // obj(1)%aa(1:3:1) // fun()
end do
 select type(c=>obj(1)%cptr)
  type is(character(len=*))
   if(size(c) /= 3) print*,301
   if(len(c) /= 5) print*,302
   if(any(c /= ["AA1XX","BB2YY","CC3ZZ"])) print*,303, c

  class default
   print*,912
 end select

 print*,"PASS"

 contains
 function fun()
 character(len=:),allocatable::fun(:)
 allocate(character(len=2)::fun(3))
 fun = ["XX", "YY", "ZZ"]
 end function
 end
