 type ty
  class(*),allocatable :: cptr(:)
 end type

 type(ty) :: obj1
 character(len=3)::kk ="AAA"

 allocate(obj1%cptr(2),source=kk)

 select type(asc=>obj1%cptr)
   class default
     print*,"201"
   type is(integer)
      print*,"901"
   type is (real)
     print*,"902"
   type is(character(len=*))
     asc(1)(1:2)= "BB"
     asc(2)(2:3)= "CC"
     if(len(asc(1)).ne.3)print*,"254"
 end select
 select type(asc=>obj1%cptr)
   class default
     print*,"201"
  type is(integer)
      print*,"901"
   type is (real)
     print*,"902"
   type is(character(len=*))
     if(asc(1)(1:2).ne."BB")print*,"113"
     if(asc(1)(2:3).ne."BA")print*,"123"
     if(asc(2)(1:2).ne."AC")print*,"133"
     if(asc(2)(2:3).ne."CC")print*,"143"
 end select
 print*,"PASS"
 end
