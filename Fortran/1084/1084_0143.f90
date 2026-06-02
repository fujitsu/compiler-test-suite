 type t0
    character(len=4)::ch
    integer::a
 end type

 type,extends(t0)::t1
   integer::b(3)
   character(len=4)::ch2
   real::c
 end type

 type ty
     class(*),allocatable :: cptr(:,:)
 end type

 type(ty) :: obj1,obj2
 class(t0),pointer :: obj3
 integer::jj
 integer::kk(3)
 integer::ll(3)
 integer::m =1
 allocate(t1::obj1%cptr(2,3))
 allocate(t0::obj2%cptr(3,2))
 allocate(t1::obj3)

 select type(asc=>obj1%cptr)
   type is(t0)
     print*,"901"
   type is(t1)
     asc(1,1)%b(1:3:1) =21
     asc(1,1)%a =31
     asc(1,1)%ch = "AB"
     asc(m,1)%ch2 = asc(m,1)%ch
     select type(asc2=>obj2%cptr)
       type is(t1)
          print*,"901"
       type is(t0)
        asc2(3,1)%a = 32
        asc2(3,1)%ch = "CD"
        if(asc2(3,1)%a .eq. 32) asc(1,1)%b(1:3:1) = asc2(3,m)%a
        jj = asc2(3,m)%a
         select type(asc3=>obj3)
          type is(t0)
             print*,"901"
          type is(t1)
            asc3%a =  asc2(3,m)%a + asc(1,m)%b(1)
            ll = asc3%a
         end select
     end select
     kk = asc(1,1)%b
 end select
  if(jj.ne.32)print*,"103"
  if(any(kk.ne.32))print*,"104"
  if(any(ll.ne.64))print*,"105"
 print*,"PASS"
 end
