 type ty
  class(*),pointer :: cptr
 end type

 type(ty) :: obj1,obj2
 character(len=2)::kk,jj

 allocate(obj1%cptr,source="AA")
 allocate(obj2%cptr,source="11")

 call sub(obj1, obj2)

contains
subroutine sub(d1,d2)
 class(ty) :: d1
 class(ty) :: d2

 select type(asc=>d1%cptr)
   type is(character(len=*))
     asc = "BB"
     select type(asc2=>d2%cptr)
       type is(character(len=*))
        asc2 = "22"
        if(asc2 .eq. "22") asc = "CC"
        jj = asc2
     end select

     kk = asc
 end select

 select type(asc3=>d1%cptr)
   type is(character(len=*))
    if(asc3 /= "CC") print*,101,asc3
    if(kk /= "CC") print*,102,kk
 end select

 select type(asc3=>d2%cptr)
   type is(character(len=*))
    if(asc3 /= "22") print*,201,asc3
    if(jj /= "22") print*,202,jj
 end select
 print*,"PASS"
end subroutine
end
