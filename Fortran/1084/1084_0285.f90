 type t1
  integer::k
 end type
 type,extends(t1):: ty
  class(*),pointer:: cptr
 end type

 class(ty),allocatable :: obj1,obj2
 integer::kk
 integer::jj

 allocate(ty::obj1)
 allocate(ty::obj2)
 select type(X=>obj1)
   type is(ty)
    allocate(X%cptr,source=1)
    select type(asc=>obj1%cptr)
    type is(integer)
      asc = 21
      obj2%cptr=> obj1%cptr
      select type(X=>obj2)
        type is(ty)
         X%k=12
          select type(asc2=>X%cptr)
            type is(integer)
             if(asc2 .eq. 21) asc = 31
             jj = asc2
          end select
        end select
     kk = asc
 end select
 end select
 if(jj.ne.31)print*,"101"
 if(kk.ne.31)print*,"102"
 print*,"PASS"
 end
