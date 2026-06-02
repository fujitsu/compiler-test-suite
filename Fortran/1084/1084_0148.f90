 type t1
 end type
 type,extends(t1):: ty
  class(*),allocatable :: cptr
 end type

 class(t1),allocatable :: obj1,obj2
 integer::kk
 integer::jj

 allocate(ty::obj1)
 allocate(ty::obj2)
 select type(X=>obj1)
   type is(ty)
    allocate(X%cptr,source=1)
    select type(asc=>X%cptr)
    type is(integer)
      asc = 21
      select type(X=>obj2)
        type is(ty)
         allocate(X%cptr,source=11)
          select type(asc2=>X%cptr)
            type is(integer)
             asc2 = -21
             if(asc2 .eq. -21) asc = 31
             jj = asc2
          end select
        end select
     kk = asc
 end select
 end select
 if(jj.ne.-21)print*,"101"
 if(kk.ne.31)print*,"102"
 print*,"PASS"
 end
