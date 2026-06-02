 type ty
  class(*),allocatable :: cptr(:)
 end type

 type(ty) :: obj1,obj2
 character(len=3)::kk ="AAA"
 character(len=3)::jj = "BBB"

 allocate(obj1%cptr(2),source=kk)
 allocate(obj2%cptr(2),source=jj)

 select type(asc=>obj1%cptr)
   type is(integer)
      print*,"901"
   type is (real)
      print*,"902"
   type is(character(len=*))
     asc(1) = "BB"
     asc(1) = "A"
     select type(asc2=>obj2%cptr)
       type is(character(len=*))
        asc2(1) = "22"
        asc2(1) = "4"
        if(asc2(1) .eq. "4") asc(1) = "CC"
        kk = asc2(1)
     end select
 end select
  if(kk.ne."4")print*,"501"
 select type(asc3=>obj1%cptr)
   type is(character(len=*))
    if(asc3(1) /= "CC") print*,101,asc3
 end select

 select type(asc3=>obj2%cptr)
   type is(character(len=*))
    if(asc3(1) /= "4") print*,201,asc3
 end select
 select type(asc=>obj1%cptr)
   type is(character(len=*))
     asc(1) = "BB"
     asc(1) = "A"
     select type(asc2=>obj2%cptr)
       type is(character(len=*))
        asc2(1) = "22"
        asc2(1) = "4"
        if(asc2(1) .eq. "22") asc(1) = "CC"
        kk = asc2(1)
       if(kk.ne.asc2(1))print*,"511"
     end select
   type is(integer)
      print*,"901"
   type is (real)
      print*,"902"
 end select
 print*,"PASS"
 end
