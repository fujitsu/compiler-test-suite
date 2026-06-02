 type t0
    integer::a
    character(len=4)::ch
 end type

 type,extends(t0)::t1
   integer::b
   character(len=4)::ch2
   real::c
 end type

 type ty
     class(t0),allocatable :: cptr
 end type

 type(ty) :: obj1,obj2
 class(t0),pointer :: obj3
 integer::jj
 integer::kk
 integer::ll

 allocate(t1::obj1%cptr)
 allocate(t0::obj2%cptr)
 allocate(t1::obj3)

 select type(asc=>obj1%cptr)
   type is(t0)
     print*,"901"
   type is(t1)
     asc%b =21
     asc%a =31
     asc%ch = "AB"
     asc%ch2 = asc%ch
     select type(asc2=>obj2%cptr)
       type is(t1)
          print*,"901"
       type is(t0)
        asc2%a = 32
        asc2%ch = "CD"
        if(asc2%a .eq. 32) asc%b = asc2%a
        jj = asc2%a
         select type(asc3=>obj3)
          type is(t0)
             print*,"901"
          type is(t1)
            asc3%a =  asc2%a + asc%b
            ll = asc3%a
         end select
     end select
     kk = asc%b
 end select
  if(jj.ne.32)print*,"103"
  if(kk.ne.32)print*,"104"
  if(ll.ne.64)print*,"105"
 print*,"PASS"
 end
