 type ty
  class(*),pointer :: cptr
 end type
 type ty2
  class(*),pointer :: cptr
 end type

 type(ty) :: obj1
 type(ty2):: obj2
 integer::kk
 integer::jj
 class(*),pointer:: cptr3
 class(*),pointer:: cptr4
 allocate(cptr4,source=2.0)
 allocate(obj1%cptr,source=1)
 allocate(obj2%cptr,source=11)
 select type(asc=>obj1%cptr)
   type is(integer)
     asc = 21
     kk =asc
     cptr3=>asc
     select type(asc2=>obj2%cptr)
       type is(integer)
       asc2 = -21
       call sub(obj1%cptr, obj2%cptr)
       call sub(obj1%cptr)
       call sub()
        if(asc2 .eq. -21) asc = 31
        jj =asc2
     select type(asc3=>obj1%cptr)
       type is(real)
       type is(integer)
       asc3 = -10
        if(asc3 .eq. -10) asc = 34
        jj = asc3
     end select
     end select
      kk =asc
 end select

 select type(asc3=>obj1%cptr)
   type is(integer)
    if(asc3 /= 34) print*,101,asc3
     select type(asc3=>cptr3)
       type is(integer)
        if(asc3.ne.34)print*,"109"
         cptr4=>asc3
         select type(asc4=>cptr3)
          type is(integer)
          if(asc3.ne.34)print*,"129"
          if(asc4.ne.34)print*,"139" 
           kk = asc4 + asc3
         end select
       type is(real)
        print*,"101"
     end select
   select type(asc3=>obj2%cptr)
     type is(integer)
      if(asc3 /= -21) print*,201,asc3
      if(jj /= 34) print*,202,jj
   end select
 end select
 if (kk.ne.68)print*,"301"
 print*,"PASS"
 contains 
 subroutine sub(a,b)
   class(*),pointer,optional::a
   class(*),pointer,optional::b
    if(present(a)) then
     select type(asc3=>a)
       type is(integer)
         if(asc3.ne.21)print*,"103"
        if(present(b))then
         select type(asc3=>b)
          type is(integer)
           if(asc3.ne.-21)print*,"113"
         end select
        endif
     end select
   endif
 end
 end
