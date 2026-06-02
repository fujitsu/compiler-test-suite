 type ty
  class(*),allocatable :: cptr
 end type
 type ty2
  class(*),allocatable :: cptr
 end type

 type(ty) :: obj1(2)
 type(ty):: obj2(2)
 integer::kk
 integer::jj=0
 integer::k=1
 allocate(obj1(1)%cptr,source=1)
 allocate(obj2(1)%cptr,source=11)
 allocate(obj1(2)%cptr,source=1)
 allocate(obj2(2)%cptr,source=11)

 select type(asc=>obj1(fun(k)-1)%cptr)
   type is(real)
     asc=31.4
   type is(integer)
     asc = 21
     kk =asc
     kk =asc
     select type(asc2=>obj1(fun(k))%cptr)
       type is(real)
       asc2 = -21.2
       type is(integer)
       asc2 = -21
        if(asc2 .eq. -21) asc = 31
        jj = asc2
      if(asc.ne.31)print*,"101"
      if(asc2.ne.-21)print*,"102"
     end select
      kk =asc
      if(kk.ne.31)print*,"104"
      if(jj.ne.-21)print*,"105"
 end select

 print*,"PASS"
 contains 
  function fun(k)
  integer::fun
  integer::k
  fun=k+1
 end
 end
