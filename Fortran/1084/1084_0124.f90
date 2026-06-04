 type ty
  class(*),allocatable :: cptr
 end type

 type(ty) :: obj1,obj2
 integer::kk
 integer::jj

 allocate(obj1%cptr,source=1)
 allocate(obj2%cptr,source=11)

 select type(asc=>obj1%cptr)
   type is(integer)
     asc = 21
     select type(asc2=>obj2%cptr)
       type is(integer)
        asc2 = -21
        if(asc2 .eq. -21) asc = 31
        jj = asc2
     end select

     kk = asc
 end select

 select type(asc3=>obj1%cptr)
   type is(integer)
    if(asc3 /= 31) print*,101,asc3
    if(kk /= 31) print*,102,kk
 end select

 select type(asc3=>obj2%cptr)
   type is(integer)
    if(asc3 /= -21) print*,201,asc3
    if(jj /= -21) print*,202,jj
 end select
 print*,"PASS"
 end
