 type t0
  integer :: jj(3)
end type
type,extends(t0)::t1
  integer ::kk(3)
end type

 type ty
  class(*),allocatable :: cptr
 end type

 type(ty) :: obj1,obj2
 type(t1)::kk
 type(t0)::jj

 allocate(t1::obj1%cptr)
 allocate(t0::obj2%cptr)

 select type(asc=>obj1%cptr)
   type is(t1)
     asc = t1(t0([10,20,30]),[40,50,60])
     select type(asc2=>obj2%cptr)
       type is(t0)
        asc2 = t0([10,20,30])
        if(any(asc2%jj.eq.[10,20,30]))then
          asc%kk = [31,32,33]
        endif
        jj = asc2
     end select
     kk = asc
 end select
 if(any(jj%jj.ne.[10,20,30]))print*,"101"
 if(any(kk%kk.ne.[31,32,33]))print*,"102"
 print*,"PASS"
 end
