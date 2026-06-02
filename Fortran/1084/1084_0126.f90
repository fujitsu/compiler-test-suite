 type ty
  class(*),pointer :: cptr
 end type

 type(ty) :: obj1,obj2
 character(len=2)::kk,jj

 allocate(obj1%cptr,source="AA")
 allocate(obj2%cptr,source="11")

 select type(asc=>obj1%cptr)
   type is(character(len=*))
     asc = "BB"
     select type(asc2=>obj2%cptr)
       type is(character(len=*))
        asc2 = "22"
        if(asc2 .eq. "22") asc = "CC"
        jj = asc2
     end select

     kk = asc
 end select

 select type(asc3=>obj1%cptr)
   type is(character(len=*))
    if(asc3 /= "CC") print*,101,asc3
    if(kk /= "CC") print*,102,kk
 end select

 select type(asc3=>obj2%cptr)
   type is(character(len=*))
    if(asc3 /= "22") print*,201,asc3
    if(jj /= "22") print*,202,jj
 end select
 print*,"PASS"
 end
